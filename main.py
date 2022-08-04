import sys
import os
from antlr4 import *

# Lexer / Parser core
from yapl.grammar.YAPLLexer import YAPLLexer
from yapl.grammar.YAPLParser import YAPLParser
# Visitors
from yapl.grammar.YAPLVisitor import YAPLVisitor
from yapl.visitors.ast import ASTVisitor
from yapl.visitors.collector import (
    TypeCollectorVisitor,
    TypeBuilderVisitor,
    Hierarchy,
    TypeHierarchy
)

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

    # New phase...
    type_collector = TypeCollectorVisitor()
    type_builder = TypeBuilderVisitor()
    type_hierarchy = TypeHierarchy()
    hierarchy = Hierarchy()
    
    
if __name__ == "__main__":
    main()