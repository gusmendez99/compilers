import sys
import os
from tabulate import tabulate
from antlr4 import *
import settings
# Lexer / Parser core
from yapl.grammar.YAPLLexer import YAPLLexer
from yapl.grammar.YAPLParser import YAPLParser
# Visitors
from yapl.grammar.YAPLVisitor import YAPLVisitor
from yapl.visitors.ast import ASTVisitor
from yapl.models.types import *
from yapl.visitors.collector import (
    TypeCollectorVisitor,
    TypeBuilderVisitor,
    Hierarchy,
    TypeHierarchy
)
from yapl.visitors.typecheck import TypeCheckVisitor
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


    # Lexer
    lexer = YAPLLexer(data)
    stream = CommonTokenStream(lexer)
    # Parser
    parser = YAPLParser(stream)
    tree = parser.start()

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
    print('Phase 1: ', settings.compile_errors)
    
    type_hierarchy.inheritance_resolve(active_context_type, 'Object')
    print('Phase 2: ', settings.compile_errors)

    type_hierarchy_status = ast.validate(active_context_type)
    print("Hierarchy Check status: ", type_hierarchy_status)
    
    # 4. Type Checking
    type_checker = TypeCheckVisitor()
    type_checker.visit(ast, active_context_type, [])
    print('Phase 3: ', settings.compile_errors)
    
    """ Symbol Table Summary """
    # symbol_table_headers = ["SYMBOL", "TYPE EXPR", "PARENT?", "ATTRS?", "METHOD NAMES"]
    # symbol_table_data = []
    validate_main = (MAIN_TYPE in active_context_type.types.keys() and active_context_type.types[MAIN_TYPE].name == MAIN_TYPE and MAIN_FUNCTION in active_context_type.types[MAIN_TYPE].methods.keys())
    
    # print("\n -----> SYMBOL TABLE <----- \n")
    # print(tabulate(symbol_table_data, headers=symbol_table_headers))
    if not validate_main:
        settings.compile_errors.append(
            CheckError(
                text=f"Class '{MAIN_TYPE}' or its main function '{MAIN_FUNCTION}' does not exists on file",
                line=-1
            )
        )

    return settings.compile_errors


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
        errors = process_input_code(code)
        response = {
            'errors': [str(err) for err in errors] if errors else None
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