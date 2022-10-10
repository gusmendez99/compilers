import sys
import os
from tabulate import tabulate
from antlr4 import *
import settings
# Lexer / Parser core
from yapl.grammar.YAPLLexer import YAPLLexer
from yapl.grammar.YAPL2Lexer import YAPLLexer as YAPL2Lexer
from yapl.grammar.YAPLParser import YAPLParser
from yapl.grammar.YAPL2Parser import YAPLParser as YAPL2Parser
# Visitors
from yapl.grammar.YAPLVisitor import YAPLVisitor
from yapl.grammar.YAPL2Visitor import YAPLVisitor as YAPL2Visitor
from yapl.visitors.ast import ASTVisitor
from yapl.models.types import *
from yapl.visitors.collector import (
    TypeCollectorVisitor,
    TypeBuilderVisitor,
    Hierarchy,
    TypeHierarchy
)
from yapl.visitors.intermediate import IntermediateVisitor, TACVisitor
from yapl.visitors.typecheck import TypeCheckVisitor, TypesTableCheckVisitor
from yapl.visitors.symbols import SymbolsVisitor
from yapl.utils import CheckError

# Flask
import json
from flask import Flask, request, jsonify
from flask_cors import CORS


MAIN_TYPE = 'Main'
MAIN_FUNCTION = 'main'


def process_input_code(code = ""):
    """ Reset values """
    settings.compile_errors = []
    data =  InputStream(code)
    data2 =  InputStream(code)
    errors = []

    # Lexer
    lexer = YAPLLexer(data)
    lexer2 = YAPL2Lexer(data2)
    stream = CommonTokenStream(lexer)
    stream2 = CommonTokenStream(lexer2)
    # Parser
    parser = YAPLParser(stream)
    parser2 = YAPL2Parser(stream2)
    tree = parser.program()
    tree2 = parser2.program()

    # Semantic Analysis
    visitor = ASTVisitor()
    ast = visitor.visit(tree)
    active_context_type = ContextType()

    """ Compile Phase """
    # 1. Type Collector
    type_collector = TypeCollectorVisitor()
    type_collector.visit(ast, active_context_type, [])

    # 2. Type Builder
    type_builder = TypeBuilderVisitor()
    type_builder.visit(ast, active_context_type, [])

    # 3. Heirarchy
    hierarchy = Hierarchy()
    type_hierarchy = TypeHierarchy()

    hierarchy.visit(ast, active_context_type, type_hierarchy)
    # print('Phase 1: ', settings.compile_errors)
    
    type_hierarchy.inheritance_resolve(active_context_type, 'Object')
    # print('Phase 2: ', settings.compile_errors)

    type_hierarchy_status = ast.validate(active_context_type)
    # print("Hierarchy Check status: ", type_hierarchy_status)
    
    # 4. Type Checking
    type_checker = TypeCheckVisitor()
    types_table_checker = TypesTableCheckVisitor()

    type_checker.visit(ast, active_context_type, [])
    types_table, errors = types_table_checker.visit(tree2)
    # print('Phase 3: ', settings.compile_errors)
    symbols_table, errors = SymbolsVisitor(types_table).visit(tree2)
    types_table.calculate_classes_sizes()

    print("TABLE: ", symbols_table)
    print("ERRORS?: ", errors)

    types_response_str = ''

    for value in types_table.class_list.values():
        types_response_str += f'Type: {value.id} [{value.length}] \n'

    validate_main = (MAIN_TYPE in active_context_type.types.keys() and active_context_type.types[MAIN_TYPE].name == MAIN_TYPE and MAIN_FUNCTION in active_context_type.types[MAIN_TYPE].methods.keys())
    
    if not validate_main:
        settings.compile_errors.append(
            CheckError(
                text=f"Class '{MAIN_TYPE}' or its main function '{MAIN_FUNCTION}' does not exists on file",
                line=-1
            )
        )
        return settings.compile_errors

    # 5. Intermediate Code
    intermediate_code = IntermediateVisitor()
    intermediate_code_result = intermediate_code.visit(ast)

    # 6. 3 Address Code
    tac_final_result = ""
    tac_classes_result = TACVisitor(types_table).visit(tree2)
    space_between_classes = 4 if len(tac_classes_result) > 1 else 1
    for tac_class in tac_classes_result:
        tac_final_result += str(tac_class)
        tac_final_result += ("\n" * space_between_classes)

    
    # Types list
    intermediate_code_info = types_response_str
    return errors, intermediate_code_info, tac_final_result


app = Flask(__name__)
CORS(app)

@app.route('/compile', methods=['POST'])
def compile():
    # get code that the person has entered
    try:
        data = request.get_json()
        code = data['code']
    except:
        return "Provide a valid code to compile", 500
    
    if code:
        print('Processing code...')
        errors, intermediate_code_info, tac_code = process_input_code(code)
        response = {
            'errors': [str(err) for err in errors] if errors else None,
            'info': intermediate_code_info,
            'result': tac_code,
        }
        return jsonify(response), 200
    else:
        return "Provide a valid code to compile", 500


@app.errorhandler(500)
def internal_error(error):
    return "Internal Server Exception", 500

if __name__ == "__main__":
    settings.init_compile_errors()
    app.run(host=settings.HOST, port=settings.PORT, debug=settings.DEBUG)
