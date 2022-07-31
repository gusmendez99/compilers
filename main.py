import sys
import os
from antlr4 import *

from yapl.grammar.YAPLLexer import YAPLLexer
from yapl.grammar.YAPLParser import YAPLParser
from yapl.grammar.YAPLVisitor import YAPLVisitor
from antlr4.tree.Trees import Trees

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
    tree = parser.program()

    print(Trees.toStringTree(tree,None,parser))
    print("Tokens:")
    for token in stream.tokens:
        print(" ",token.text, ':', token.type)

    # Semantic Analysis
    visitor = YAPLVisitor()
    visitor.visit(tree)
    
if __name__ == "__main__":
    main()