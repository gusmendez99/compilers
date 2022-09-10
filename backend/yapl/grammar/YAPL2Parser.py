# Generated from ./grammar/YAPL.g4 by ANTLR 4.10
# encoding: utf-8
from antlr4 import *
from io import StringIO
import sys
if sys.version_info[1] > 5:
	from typing import TextIO
else:
	from typing.io import TextIO

def serializedATN():
    return [
        4,1,40,196,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
        6,2,7,7,7,1,0,1,0,1,0,4,0,20,8,0,11,0,12,0,21,1,0,1,0,1,1,1,1,1,
        1,1,1,3,1,30,8,1,1,1,1,1,1,1,3,1,35,8,1,1,1,1,1,5,1,39,8,1,10,1,
        12,1,42,9,1,1,1,1,1,1,2,1,2,1,2,5,2,49,8,2,10,2,12,2,52,9,2,1,3,
        1,3,1,3,1,3,1,3,3,3,59,8,3,1,4,1,4,1,4,1,4,1,4,5,4,66,8,4,10,4,12,
        4,69,9,4,3,4,71,8,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,1,5,1,5,1,5,1,5,
        1,6,1,6,1,6,1,6,1,6,1,6,5,6,90,8,6,10,6,12,6,93,9,6,3,6,95,8,6,1,
        6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,
        6,1,6,1,6,4,6,116,8,6,11,6,12,6,117,1,6,1,6,1,6,1,6,1,6,1,6,5,6,
        126,8,6,10,6,12,6,129,9,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,
        6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,3,6,154,8,
        6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,6,3,6,168,8,6,1,
        6,1,6,1,6,1,6,1,6,1,6,5,6,176,8,6,10,6,12,6,179,9,6,3,6,181,8,6,
        1,6,5,6,184,8,6,10,6,12,6,187,9,6,1,7,1,7,1,7,1,7,1,7,3,7,194,8,
        7,1,7,0,1,12,8,0,2,4,6,8,10,12,14,0,3,1,0,12,13,1,0,14,15,1,0,16,
        18,222,0,19,1,0,0,0,2,25,1,0,0,0,4,45,1,0,0,0,6,53,1,0,0,0,8,60,
        1,0,0,0,10,79,1,0,0,0,12,153,1,0,0,0,14,188,1,0,0,0,16,17,3,2,1,
        0,17,18,5,1,0,0,18,20,1,0,0,0,19,16,1,0,0,0,20,21,1,0,0,0,21,19,
        1,0,0,0,21,22,1,0,0,0,22,23,1,0,0,0,23,24,5,0,0,1,24,1,1,0,0,0,25,
        26,5,19,0,0,26,29,5,36,0,0,27,28,5,25,0,0,28,30,5,36,0,0,29,27,1,
        0,0,0,29,30,1,0,0,0,30,31,1,0,0,0,31,40,5,2,0,0,32,35,3,8,4,0,33,
        35,3,4,2,0,34,32,1,0,0,0,34,33,1,0,0,0,35,36,1,0,0,0,36,37,5,1,0,
        0,37,39,1,0,0,0,38,34,1,0,0,0,39,42,1,0,0,0,40,38,1,0,0,0,40,41,
        1,0,0,0,41,43,1,0,0,0,42,40,1,0,0,0,43,44,5,3,0,0,44,3,1,0,0,0,45,
        50,3,6,3,0,46,47,5,4,0,0,47,49,3,6,3,0,48,46,1,0,0,0,49,52,1,0,0,
        0,50,48,1,0,0,0,50,51,1,0,0,0,51,5,1,0,0,0,52,50,1,0,0,0,53,54,5,
        38,0,0,54,55,5,5,0,0,55,58,5,36,0,0,56,57,5,6,0,0,57,59,3,12,6,0,
        58,56,1,0,0,0,58,59,1,0,0,0,59,7,1,0,0,0,60,61,5,38,0,0,61,70,5,
        7,0,0,62,67,3,10,5,0,63,64,5,4,0,0,64,66,3,10,5,0,65,63,1,0,0,0,
        66,69,1,0,0,0,67,65,1,0,0,0,67,68,1,0,0,0,68,71,1,0,0,0,69,67,1,
        0,0,0,70,62,1,0,0,0,70,71,1,0,0,0,71,72,1,0,0,0,72,73,5,8,0,0,73,
        74,5,5,0,0,74,75,5,36,0,0,75,76,5,2,0,0,76,77,3,12,6,0,77,78,5,3,
        0,0,78,9,1,0,0,0,79,80,5,38,0,0,80,81,5,5,0,0,81,82,5,36,0,0,82,
        11,1,0,0,0,83,84,6,6,-1,0,84,85,5,38,0,0,85,94,5,7,0,0,86,91,3,12,
        6,0,87,88,5,4,0,0,88,90,3,12,6,0,89,87,1,0,0,0,90,93,1,0,0,0,91,
        89,1,0,0,0,91,92,1,0,0,0,92,95,1,0,0,0,93,91,1,0,0,0,94,86,1,0,0,
        0,94,95,1,0,0,0,95,96,1,0,0,0,96,154,5,8,0,0,97,98,5,23,0,0,98,99,
        3,12,6,0,99,100,5,29,0,0,100,101,3,12,6,0,101,102,5,20,0,0,102,103,
        3,12,6,0,103,104,5,22,0,0,104,154,1,0,0,0,105,106,5,30,0,0,106,107,
        3,12,6,0,107,108,5,27,0,0,108,109,3,12,6,0,109,110,5,28,0,0,110,
        154,1,0,0,0,111,115,5,2,0,0,112,113,3,12,6,0,113,114,5,1,0,0,114,
        116,1,0,0,0,115,112,1,0,0,0,116,117,1,0,0,0,117,115,1,0,0,0,117,
        118,1,0,0,0,118,119,1,0,0,0,119,120,5,3,0,0,120,154,1,0,0,0,121,
        122,5,34,0,0,122,127,3,14,7,0,123,124,5,4,0,0,124,126,3,14,7,0,125,
        123,1,0,0,0,126,129,1,0,0,0,127,125,1,0,0,0,127,128,1,0,0,0,128,
        130,1,0,0,0,129,127,1,0,0,0,130,131,5,24,0,0,131,132,3,12,6,15,132,
        154,1,0,0,0,133,134,5,31,0,0,134,154,5,36,0,0,135,136,5,11,0,0,136,
        154,3,12,6,13,137,138,5,26,0,0,138,154,3,12,6,12,139,140,5,32,0,
        0,140,154,3,12,6,8,141,142,5,38,0,0,142,143,5,6,0,0,143,154,3,12,
        6,7,144,145,5,7,0,0,145,146,3,12,6,0,146,147,5,8,0,0,147,154,1,0,
        0,0,148,154,5,38,0,0,149,154,5,37,0,0,150,154,5,35,0,0,151,154,5,
        33,0,0,152,154,5,21,0,0,153,83,1,0,0,0,153,97,1,0,0,0,153,105,1,
        0,0,0,153,111,1,0,0,0,153,121,1,0,0,0,153,133,1,0,0,0,153,135,1,
        0,0,0,153,137,1,0,0,0,153,139,1,0,0,0,153,141,1,0,0,0,153,144,1,
        0,0,0,153,148,1,0,0,0,153,149,1,0,0,0,153,150,1,0,0,0,153,151,1,
        0,0,0,153,152,1,0,0,0,154,185,1,0,0,0,155,156,10,11,0,0,156,157,
        7,0,0,0,157,184,3,12,6,12,158,159,10,10,0,0,159,160,7,1,0,0,160,
        184,3,12,6,11,161,162,10,9,0,0,162,163,7,2,0,0,163,184,3,12,6,10,
        164,167,10,20,0,0,165,166,5,9,0,0,166,168,5,36,0,0,167,165,1,0,0,
        0,167,168,1,0,0,0,168,169,1,0,0,0,169,170,5,10,0,0,170,171,5,38,
        0,0,171,180,5,7,0,0,172,177,3,12,6,0,173,174,5,4,0,0,174,176,3,12,
        6,0,175,173,1,0,0,0,176,179,1,0,0,0,177,175,1,0,0,0,177,178,1,0,
        0,0,178,181,1,0,0,0,179,177,1,0,0,0,180,172,1,0,0,0,180,181,1,0,
        0,0,181,182,1,0,0,0,182,184,5,8,0,0,183,155,1,0,0,0,183,158,1,0,
        0,0,183,161,1,0,0,0,183,164,1,0,0,0,184,187,1,0,0,0,185,183,1,0,
        0,0,185,186,1,0,0,0,186,13,1,0,0,0,187,185,1,0,0,0,188,189,5,38,
        0,0,189,190,5,5,0,0,190,193,5,36,0,0,191,192,5,6,0,0,192,194,3,12,
        6,0,193,191,1,0,0,0,193,194,1,0,0,0,194,15,1,0,0,0,19,21,29,34,40,
        50,58,67,70,91,94,117,127,153,167,177,180,183,185,193
    ]

class YAPLParser ( Parser ):

    grammarFileName = "YAPL.g4"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ "<INVALID>", "';'", "'{'", "'}'", "','", "':'", "'<-'", 
                     "'('", "')'", "'@'", "'.'", "'~'", "'*'", "'/'", "'+'", 
                     "'-'", "'<'", "'<='", "'='", "'class'", "'else'", "'false'", 
                     "'fi'", "'if'", "'in'", "'inherits'", "'isvoid'", "'loop'", 
                     "'pool'", "'then'", "'while'", "'new'", "'not'", "'true'", 
                     "'let'" ]

    symbolicNames = [ "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                      "<INVALID>", "<INVALID>", "<INVALID>", "CLASS", "ELSE", 
                      "FALSE", "FI", "IF", "IN", "INHERITS", "ISVOID", "LOOP", 
                      "POOL", "THEN", "WHILE", "NEW", "NOT", "TRUE", "LET", 
                      "STRING", "TYPE", "INTEGER", "ID", "WS", "COMMENTS" ]

    RULE_program = 0
    RULE_class_exp = 1
    RULE_attribute = 2
    RULE_declaration = 3
    RULE_method = 4
    RULE_formal = 5
    RULE_expr = 6
    RULE_let_declaration = 7

    ruleNames =  [ "program", "class_exp", "attribute", "declaration", 
                   "method", "formal", "expr", "let_declaration" ]

    EOF = Token.EOF
    T__0=1
    T__1=2
    T__2=3
    T__3=4
    T__4=5
    T__5=6
    T__6=7
    T__7=8
    T__8=9
    T__9=10
    T__10=11
    T__11=12
    T__12=13
    T__13=14
    T__14=15
    T__15=16
    T__16=17
    T__17=18
    CLASS=19
    ELSE=20
    FALSE=21
    FI=22
    IF=23
    IN=24
    INHERITS=25
    ISVOID=26
    LOOP=27
    POOL=28
    THEN=29
    WHILE=30
    NEW=31
    NOT=32
    TRUE=33
    LET=34
    STRING=35
    TYPE=36
    INTEGER=37
    ID=38
    WS=39
    COMMENTS=40

    def __init__(self, input:TokenStream, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.10")
        self._interp = ParserATNSimulator(self, self.atn, self.decisionsToDFA, self.sharedContextCache)
        self._predicates = None




    class ProgramContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def EOF(self):
            return self.getToken(YAPLParser.EOF, 0)

        def class_exp(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.Class_expContext)
            else:
                return self.getTypedRuleContext(YAPLParser.Class_expContext,i)


        def getRuleIndex(self):
            return YAPLParser.RULE_program

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitProgram" ):
                return visitor.visitProgram(self)
            else:
                return visitor.visitChildren(self)




    def program(self):

        localctx = YAPLParser.ProgramContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_program)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 19 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 16
                self.class_exp()
                self.state = 17
                self.match(YAPLParser.T__0)
                self.state = 21 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==YAPLParser.CLASS):
                    break

            self.state = 23
            self.match(YAPLParser.EOF)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class Class_expContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def CLASS(self):
            return self.getToken(YAPLParser.CLASS, 0)

        def TYPE(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.TYPE)
            else:
                return self.getToken(YAPLParser.TYPE, i)

        def INHERITS(self):
            return self.getToken(YAPLParser.INHERITS, 0)

        def method(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.MethodContext)
            else:
                return self.getTypedRuleContext(YAPLParser.MethodContext,i)


        def attribute(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.AttributeContext)
            else:
                return self.getTypedRuleContext(YAPLParser.AttributeContext,i)


        def getRuleIndex(self):
            return YAPLParser.RULE_class_exp

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitClass_exp" ):
                return visitor.visitClass_exp(self)
            else:
                return visitor.visitChildren(self)




    def class_exp(self):

        localctx = YAPLParser.Class_expContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_class_exp)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 25
            self.match(YAPLParser.CLASS)
            self.state = 26
            self.match(YAPLParser.TYPE)
            self.state = 29
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if _la==YAPLParser.INHERITS:
                self.state = 27
                self.match(YAPLParser.INHERITS)
                self.state = 28
                self.match(YAPLParser.TYPE)


            self.state = 31
            self.match(YAPLParser.T__1)
            self.state = 40
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==YAPLParser.ID:
                self.state = 34
                self._errHandler.sync(self)
                la_ = self._interp.adaptivePredict(self._input,2,self._ctx)
                if la_ == 1:
                    self.state = 32
                    self.method()
                    pass

                elif la_ == 2:
                    self.state = 33
                    self.attribute()
                    pass


                self.state = 36
                self.match(YAPLParser.T__0)
                self.state = 42
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 43
            self.match(YAPLParser.T__2)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class AttributeContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def declaration(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.DeclarationContext)
            else:
                return self.getTypedRuleContext(YAPLParser.DeclarationContext,i)


        def getRuleIndex(self):
            return YAPLParser.RULE_attribute

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitAttribute" ):
                return visitor.visitAttribute(self)
            else:
                return visitor.visitChildren(self)




    def attribute(self):

        localctx = YAPLParser.AttributeContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_attribute)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 45
            self.declaration()
            self.state = 50
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==YAPLParser.T__3:
                self.state = 46
                self.match(YAPLParser.T__3)
                self.state = 47
                self.declaration()
                self.state = 52
                self._errHandler.sync(self)
                _la = self._input.LA(1)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class DeclarationContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)

        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)

        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def getRuleIndex(self):
            return YAPLParser.RULE_declaration

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitDeclaration" ):
                return visitor.visitDeclaration(self)
            else:
                return visitor.visitChildren(self)




    def declaration(self):

        localctx = YAPLParser.DeclarationContext(self, self._ctx, self.state)
        self.enterRule(localctx, 6, self.RULE_declaration)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 53
            self.match(YAPLParser.ID)
            self.state = 54
            self.match(YAPLParser.T__4)
            self.state = 55
            self.match(YAPLParser.TYPE)
            self.state = 58
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if _la==YAPLParser.T__5:
                self.state = 56
                self.match(YAPLParser.T__5)
                self.state = 57
                self.expr(0)


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class MethodContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)

        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)

        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def formal(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.FormalContext)
            else:
                return self.getTypedRuleContext(YAPLParser.FormalContext,i)


        def getRuleIndex(self):
            return YAPLParser.RULE_method

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitMethod" ):
                return visitor.visitMethod(self)
            else:
                return visitor.visitChildren(self)




    def method(self):

        localctx = YAPLParser.MethodContext(self, self._ctx, self.state)
        self.enterRule(localctx, 8, self.RULE_method)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 60
            self.match(YAPLParser.ID)
            self.state = 61
            self.match(YAPLParser.T__6)
            self.state = 70
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if _la==YAPLParser.ID:
                self.state = 62
                self.formal()
                self.state = 67
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                while _la==YAPLParser.T__3:
                    self.state = 63
                    self.match(YAPLParser.T__3)
                    self.state = 64
                    self.formal()
                    self.state = 69
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)



            self.state = 72
            self.match(YAPLParser.T__7)
            self.state = 73
            self.match(YAPLParser.T__4)
            self.state = 74
            self.match(YAPLParser.TYPE)
            self.state = 75
            self.match(YAPLParser.T__1)
            self.state = 76
            self.expr(0)
            self.state = 77
            self.match(YAPLParser.T__2)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class FormalContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)

        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)

        def getRuleIndex(self):
            return YAPLParser.RULE_formal

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitFormal" ):
                return visitor.visitFormal(self)
            else:
                return visitor.visitChildren(self)




    def formal(self):

        localctx = YAPLParser.FormalContext(self, self._ctx, self.state)
        self.enterRule(localctx, 10, self.RULE_formal)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 79
            self.match(YAPLParser.ID)
            self.state = 80
            self.match(YAPLParser.T__4)
            self.state = 81
            self.match(YAPLParser.TYPE)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ExprContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser


        def getRuleIndex(self):
            return YAPLParser.RULE_expr

     
        def copyFrom(self, ctx:ParserRuleContext):
            super().copyFrom(ctx)


    class NewContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def NEW(self):
            return self.getToken(YAPLParser.NEW, 0)
        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitNew" ):
                return visitor.visitNew(self)
            else:
                return visitor.visitChildren(self)


    class NegIntegerContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitNegInteger" ):
                return visitor.visitNegInteger(self)
            else:
                return visitor.visitChildren(self)


    class StringContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def STRING(self):
            return self.getToken(YAPLParser.STRING, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitString" ):
                return visitor.visitString(self)
            else:
                return visitor.visitChildren(self)


    class BlocksContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitBlocks" ):
                return visitor.visitBlocks(self)
            else:
                return visitor.visitChildren(self)


    class IsvoidContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def ISVOID(self):
            return self.getToken(YAPLParser.ISVOID, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitIsvoid" ):
                return visitor.visitIsvoid(self)
            else:
                return visitor.visitChildren(self)


    class AssignmentContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitAssignment" ):
                return visitor.visitAssignment(self)
            else:
                return visitor.visitChildren(self)


    class FalseContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def FALSE(self):
            return self.getToken(YAPLParser.FALSE, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitFalse" ):
                return visitor.visitFalse(self)
            else:
                return visitor.visitChildren(self)


    class IntegerContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def INTEGER(self):
            return self.getToken(YAPLParser.INTEGER, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitInteger" ):
                return visitor.visitInteger(self)
            else:
                return visitor.visitChildren(self)


    class WhileContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def WHILE(self):
            return self.getToken(YAPLParser.WHILE, 0)
        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def LOOP(self):
            return self.getToken(YAPLParser.LOOP, 0)
        def POOL(self):
            return self.getToken(YAPLParser.POOL, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitWhile" ):
                return visitor.visitWhile(self)
            else:
                return visitor.visitChildren(self)


    class Add_subContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitAdd_sub" ):
                return visitor.visitAdd_sub(self)
            else:
                return visitor.visitChildren(self)


    class DispatchContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)
        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitDispatch" ):
                return visitor.visitDispatch(self)
            else:
                return visitor.visitChildren(self)


    class Star_divisionContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitStar_division" ):
                return visitor.visitStar_division(self)
            else:
                return visitor.visitChildren(self)


    class NotContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def NOT(self):
            return self.getToken(YAPLParser.NOT, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitNot" ):
                return visitor.visitNot(self)
            else:
                return visitor.visitChildren(self)


    class ConditionContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitCondition" ):
                return visitor.visitCondition(self)
            else:
                return visitor.visitChildren(self)


    class TrueContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def TRUE(self):
            return self.getToken(YAPLParser.TRUE, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitTrue" ):
                return visitor.visitTrue(self)
            else:
                return visitor.visitChildren(self)


    class LetContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def LET(self):
            return self.getToken(YAPLParser.LET, 0)
        def let_declaration(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.Let_declarationContext)
            else:
                return self.getTypedRuleContext(YAPLParser.Let_declarationContext,i)

        def IN(self):
            return self.getToken(YAPLParser.IN, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitLet" ):
                return visitor.visitLet(self)
            else:
                return visitor.visitChildren(self)


    class IdContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitId" ):
                return visitor.visitId(self)
            else:
                return visitor.visitChildren(self)


    class IfContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def IF(self):
            return self.getToken(YAPLParser.IF, 0)
        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def THEN(self):
            return self.getToken(YAPLParser.THEN, 0)
        def ELSE(self):
            return self.getToken(YAPLParser.ELSE, 0)
        def FI(self):
            return self.getToken(YAPLParser.FI, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitIf" ):
                return visitor.visitIf(self)
            else:
                return visitor.visitChildren(self)


    class CallContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)
        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitCall" ):
                return visitor.visitCall(self)
            else:
                return visitor.visitChildren(self)


    class ParenthesisContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitParenthesis" ):
                return visitor.visitParenthesis(self)
            else:
                return visitor.visitChildren(self)



    def expr(self, _p:int=0):
        _parentctx = self._ctx
        _parentState = self.state
        localctx = YAPLParser.ExprContext(self, self._ctx, _parentState)
        _prevctx = localctx
        _startState = 12
        self.enterRecursionRule(localctx, 12, self.RULE_expr, _p)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 153
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,12,self._ctx)
            if la_ == 1:
                localctx = YAPLParser.CallContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx

                self.state = 84
                self.match(YAPLParser.ID)
                self.state = 85
                self.match(YAPLParser.T__6)
                self.state = 94
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if (((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << YAPLParser.T__1) | (1 << YAPLParser.T__6) | (1 << YAPLParser.T__10) | (1 << YAPLParser.FALSE) | (1 << YAPLParser.IF) | (1 << YAPLParser.ISVOID) | (1 << YAPLParser.WHILE) | (1 << YAPLParser.NEW) | (1 << YAPLParser.NOT) | (1 << YAPLParser.TRUE) | (1 << YAPLParser.LET) | (1 << YAPLParser.STRING) | (1 << YAPLParser.INTEGER) | (1 << YAPLParser.ID))) != 0):
                    self.state = 86
                    self.expr(0)
                    self.state = 91
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    while _la==YAPLParser.T__3:
                        self.state = 87
                        self.match(YAPLParser.T__3)
                        self.state = 88
                        self.expr(0)
                        self.state = 93
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)



                self.state = 96
                self.match(YAPLParser.T__7)
                pass

            elif la_ == 2:
                localctx = YAPLParser.IfContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 97
                self.match(YAPLParser.IF)
                self.state = 98
                self.expr(0)
                self.state = 99
                self.match(YAPLParser.THEN)
                self.state = 100
                self.expr(0)
                self.state = 101
                self.match(YAPLParser.ELSE)
                self.state = 102
                self.expr(0)
                self.state = 103
                self.match(YAPLParser.FI)
                pass

            elif la_ == 3:
                localctx = YAPLParser.WhileContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 105
                self.match(YAPLParser.WHILE)
                self.state = 106
                self.expr(0)
                self.state = 107
                self.match(YAPLParser.LOOP)
                self.state = 108
                self.expr(0)
                self.state = 109
                self.match(YAPLParser.POOL)
                pass

            elif la_ == 4:
                localctx = YAPLParser.BlocksContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 111
                self.match(YAPLParser.T__1)
                self.state = 115 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                while True:
                    self.state = 112
                    self.expr(0)
                    self.state = 113
                    self.match(YAPLParser.T__0)
                    self.state = 117 
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << YAPLParser.T__1) | (1 << YAPLParser.T__6) | (1 << YAPLParser.T__10) | (1 << YAPLParser.FALSE) | (1 << YAPLParser.IF) | (1 << YAPLParser.ISVOID) | (1 << YAPLParser.WHILE) | (1 << YAPLParser.NEW) | (1 << YAPLParser.NOT) | (1 << YAPLParser.TRUE) | (1 << YAPLParser.LET) | (1 << YAPLParser.STRING) | (1 << YAPLParser.INTEGER) | (1 << YAPLParser.ID))) != 0)):
                        break

                self.state = 119
                self.match(YAPLParser.T__2)
                pass

            elif la_ == 5:
                localctx = YAPLParser.LetContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 121
                self.match(YAPLParser.LET)
                self.state = 122
                self.let_declaration()
                self.state = 127
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                while _la==YAPLParser.T__3:
                    self.state = 123
                    self.match(YAPLParser.T__3)
                    self.state = 124
                    self.let_declaration()
                    self.state = 129
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)

                self.state = 130
                self.match(YAPLParser.IN)
                self.state = 131
                self.expr(15)
                pass

            elif la_ == 6:
                localctx = YAPLParser.NewContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 133
                self.match(YAPLParser.NEW)
                self.state = 134
                self.match(YAPLParser.TYPE)
                pass

            elif la_ == 7:
                localctx = YAPLParser.NegIntegerContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 135
                self.match(YAPLParser.T__10)
                self.state = 136
                self.expr(13)
                pass

            elif la_ == 8:
                localctx = YAPLParser.IsvoidContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 137
                self.match(YAPLParser.ISVOID)
                self.state = 138
                self.expr(12)
                pass

            elif la_ == 9:
                localctx = YAPLParser.NotContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 139
                self.match(YAPLParser.NOT)
                self.state = 140
                self.expr(8)
                pass

            elif la_ == 10:
                localctx = YAPLParser.AssignmentContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 141
                self.match(YAPLParser.ID)
                self.state = 142
                self.match(YAPLParser.T__5)
                self.state = 143
                self.expr(7)
                pass

            elif la_ == 11:
                localctx = YAPLParser.ParenthesisContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 144
                self.match(YAPLParser.T__6)
                self.state = 145
                self.expr(0)
                self.state = 146
                self.match(YAPLParser.T__7)
                pass

            elif la_ == 12:
                localctx = YAPLParser.IdContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 148
                self.match(YAPLParser.ID)
                pass

            elif la_ == 13:
                localctx = YAPLParser.IntegerContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 149
                self.match(YAPLParser.INTEGER)
                pass

            elif la_ == 14:
                localctx = YAPLParser.StringContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 150
                self.match(YAPLParser.STRING)
                pass

            elif la_ == 15:
                localctx = YAPLParser.TrueContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 151
                self.match(YAPLParser.TRUE)
                pass

            elif la_ == 16:
                localctx = YAPLParser.FalseContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 152
                self.match(YAPLParser.FALSE)
                pass


            self._ctx.stop = self._input.LT(-1)
            self.state = 185
            self._errHandler.sync(self)
            _alt = self._interp.adaptivePredict(self._input,17,self._ctx)
            while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                if _alt==1:
                    if self._parseListeners is not None:
                        self.triggerExitRuleEvent()
                    _prevctx = localctx
                    self.state = 183
                    self._errHandler.sync(self)
                    la_ = self._interp.adaptivePredict(self._input,16,self._ctx)
                    if la_ == 1:
                        localctx = YAPLParser.Star_divisionContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 155
                        if not self.precpred(self._ctx, 11):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 11)")
                        self.state = 156
                        _la = self._input.LA(1)
                        if not(_la==YAPLParser.T__11 or _la==YAPLParser.T__12):
                            self._errHandler.recoverInline(self)
                        else:
                            self._errHandler.reportMatch(self)
                            self.consume()
                        self.state = 157
                        self.expr(12)
                        pass

                    elif la_ == 2:
                        localctx = YAPLParser.Add_subContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 158
                        if not self.precpred(self._ctx, 10):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 10)")
                        self.state = 159
                        _la = self._input.LA(1)
                        if not(_la==YAPLParser.T__13 or _la==YAPLParser.T__14):
                            self._errHandler.recoverInline(self)
                        else:
                            self._errHandler.reportMatch(self)
                            self.consume()
                        self.state = 160
                        self.expr(11)
                        pass

                    elif la_ == 3:
                        localctx = YAPLParser.ConditionContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 161
                        if not self.precpred(self._ctx, 9):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 9)")
                        self.state = 162
                        _la = self._input.LA(1)
                        if not((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << YAPLParser.T__15) | (1 << YAPLParser.T__16) | (1 << YAPLParser.T__17))) != 0)):
                            self._errHandler.recoverInline(self)
                        else:
                            self._errHandler.reportMatch(self)
                            self.consume()
                        self.state = 163
                        self.expr(10)
                        pass

                    elif la_ == 4:
                        localctx = YAPLParser.DispatchContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 164
                        if not self.precpred(self._ctx, 20):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 20)")
                        self.state = 167
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)
                        if _la==YAPLParser.T__8:
                            self.state = 165
                            self.match(YAPLParser.T__8)
                            self.state = 166
                            self.match(YAPLParser.TYPE)


                        self.state = 169
                        self.match(YAPLParser.T__9)
                        self.state = 170
                        self.match(YAPLParser.ID)
                        self.state = 171
                        self.match(YAPLParser.T__6)
                        self.state = 180
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)
                        if (((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << YAPLParser.T__1) | (1 << YAPLParser.T__6) | (1 << YAPLParser.T__10) | (1 << YAPLParser.FALSE) | (1 << YAPLParser.IF) | (1 << YAPLParser.ISVOID) | (1 << YAPLParser.WHILE) | (1 << YAPLParser.NEW) | (1 << YAPLParser.NOT) | (1 << YAPLParser.TRUE) | (1 << YAPLParser.LET) | (1 << YAPLParser.STRING) | (1 << YAPLParser.INTEGER) | (1 << YAPLParser.ID))) != 0):
                            self.state = 172
                            self.expr(0)
                            self.state = 177
                            self._errHandler.sync(self)
                            _la = self._input.LA(1)
                            while _la==YAPLParser.T__3:
                                self.state = 173
                                self.match(YAPLParser.T__3)
                                self.state = 174
                                self.expr(0)
                                self.state = 179
                                self._errHandler.sync(self)
                                _la = self._input.LA(1)



                        self.state = 182
                        self.match(YAPLParser.T__7)
                        pass

             
                self.state = 187
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,17,self._ctx)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.unrollRecursionContexts(_parentctx)
        return localctx


    class Let_declarationContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)

        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)

        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def getRuleIndex(self):
            return YAPLParser.RULE_let_declaration

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitLet_declaration" ):
                return visitor.visitLet_declaration(self)
            else:
                return visitor.visitChildren(self)




    def let_declaration(self):

        localctx = YAPLParser.Let_declarationContext(self, self._ctx, self.state)
        self.enterRule(localctx, 14, self.RULE_let_declaration)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 188
            self.match(YAPLParser.ID)
            self.state = 189
            self.match(YAPLParser.T__4)
            self.state = 190
            self.match(YAPLParser.TYPE)
            self.state = 193
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if _la==YAPLParser.T__5:
                self.state = 191
                self.match(YAPLParser.T__5)
                self.state = 192
                self.expr(0)


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx



    def sempred(self, localctx:RuleContext, ruleIndex:int, predIndex:int):
        if self._predicates == None:
            self._predicates = dict()
        self._predicates[6] = self.expr_sempred
        pred = self._predicates.get(ruleIndex, None)
        if pred is None:
            raise Exception("No predicate with index:" + str(ruleIndex))
        else:
            return pred(localctx, predIndex)

    def expr_sempred(self, localctx:ExprContext, predIndex:int):
            if predIndex == 0:
                return self.precpred(self._ctx, 11)
         

            if predIndex == 1:
                return self.precpred(self._ctx, 10)
         

            if predIndex == 2:
                return self.precpred(self._ctx, 9)
         

            if predIndex == 3:
                return self.precpred(self._ctx, 20)
         




