import sys
import os
from tabulate import tabulate
from antlr4 import *
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


def main():
    if len(sys.argv) < 2:
        print('You must pass the YAPL test file as param...')
        sys.exit(1)

    # Load test file
    test_file, data = None, None
    try:
        test_file = sys.argv[1]
        data = FileStream(test_file)
    except:
        print('Error on YAPL test file load...')
        sys.exit(1)

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

    """ Visitors Phase (TODO: Rename this Compilers phase) """
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
    print('Errors 1: ', hierarchy.errors)
    type_hierarchy.inheritance_resolve(active_context_type, 'Object')
    print('Errors 2: ', type_hierarchy.errors)
    type_hierarchy_status = ast.validate(active_context_type)

    print("Hierarchy Check status: ", type_hierarchy_status)
    
    # 4. Type Checking
    type_checker = TypeCheckVisitor()
    type_checker.visit(ast, active_context_type, [])
    print('Errors 3: ', type_checker.errors)
    
    """ Symbol Table Summary """
    symbol_table_headers = ["SYMBOL", "TYPE EXPR", "PARENT?", "ATTRS?", "METHOD NAMES"]
    symbol_table_data = []
    for type_ in active_context_type.types.keys():
        symbol_table_data.append([type_, active_context_type.types[type_].name, active_context_type.types[type_].parent, list(active_context_type.types[type_].attributes.keys()), list(active_context_type.types[type_].methods.keys())])
    
    print("\n -----> SYMBOL TABLE <----- \n")
    print(tabulate(symbol_table_data, headers=symbol_table_headers))

    
if __name__ == "__main__":
    main()
