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
        4,1,49,220,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,1,0,1,
        0,1,0,4,0,16,8,0,11,0,12,0,17,1,0,1,0,1,1,1,1,1,1,1,1,3,1,26,8,1,
        1,1,1,1,1,1,1,1,5,1,32,8,1,10,1,12,1,35,9,1,1,1,1,1,1,2,1,2,1,2,
        1,2,1,2,5,2,44,8,2,10,2,12,2,47,9,2,5,2,49,8,2,10,2,12,2,52,9,2,
        1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,66,8,2,3,2,68,
        8,2,1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,3,4,79,8,4,1,5,1,5,1,5,1,
        5,1,5,1,5,5,5,87,8,5,10,5,12,5,90,9,5,5,5,92,8,5,10,5,12,5,95,9,
        5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
        5,1,5,1,5,1,5,5,5,116,8,5,10,5,12,5,119,9,5,1,5,1,5,1,5,1,5,1,5,
        1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,4,5,134,8,5,11,5,12,5,135,1,5,1,
        5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,4,5,154,
        8,5,11,5,12,5,155,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
        5,3,5,170,8,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
        5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,196,8,5,1,5,1,
        5,1,5,1,5,1,5,1,5,5,5,204,8,5,10,5,12,5,207,9,5,5,5,209,8,5,10,5,
        12,5,212,9,5,1,5,5,5,215,8,5,10,5,12,5,218,9,5,1,5,0,1,10,6,0,2,
        4,6,8,10,0,0,253,0,15,1,0,0,0,2,21,1,0,0,0,4,67,1,0,0,0,6,69,1,0,
        0,0,8,73,1,0,0,0,10,169,1,0,0,0,12,13,3,2,1,0,13,14,5,33,0,0,14,
        16,1,0,0,0,15,12,1,0,0,0,16,17,1,0,0,0,17,15,1,0,0,0,17,18,1,0,0,
        0,18,19,1,0,0,0,19,20,5,0,0,1,20,1,1,0,0,0,21,22,5,9,0,0,22,25,5,
        26,0,0,23,24,5,13,0,0,24,26,5,26,0,0,25,23,1,0,0,0,25,26,1,0,0,0,
        26,27,1,0,0,0,27,33,5,31,0,0,28,29,3,4,2,0,29,30,5,33,0,0,30,32,
        1,0,0,0,31,28,1,0,0,0,32,35,1,0,0,0,33,31,1,0,0,0,33,34,1,0,0,0,
        34,36,1,0,0,0,35,33,1,0,0,0,36,37,5,32,0,0,37,3,1,0,0,0,38,39,5,
        27,0,0,39,50,5,29,0,0,40,45,3,6,3,0,41,42,5,38,0,0,42,44,3,6,3,0,
        43,41,1,0,0,0,44,47,1,0,0,0,45,43,1,0,0,0,45,46,1,0,0,0,46,49,1,
        0,0,0,47,45,1,0,0,0,48,40,1,0,0,0,49,52,1,0,0,0,50,48,1,0,0,0,50,
        51,1,0,0,0,51,53,1,0,0,0,52,50,1,0,0,0,53,54,5,30,0,0,54,55,5,34,
        0,0,55,56,5,26,0,0,56,57,5,31,0,0,57,58,3,10,5,0,58,59,5,32,0,0,
        59,68,1,0,0,0,60,61,5,27,0,0,61,62,5,34,0,0,62,65,5,26,0,0,63,64,
        5,35,0,0,64,66,3,10,5,0,65,63,1,0,0,0,65,66,1,0,0,0,66,68,1,0,0,
        0,67,38,1,0,0,0,67,60,1,0,0,0,68,5,1,0,0,0,69,70,5,27,0,0,70,71,
        5,34,0,0,71,72,5,26,0,0,72,7,1,0,0,0,73,74,5,27,0,0,74,75,5,34,0,
        0,75,78,5,26,0,0,76,77,5,35,0,0,77,79,3,10,5,0,78,76,1,0,0,0,78,
        79,1,0,0,0,79,9,1,0,0,0,80,81,6,5,-1,0,81,82,5,27,0,0,82,93,5,29,
        0,0,83,88,3,10,5,0,84,85,5,38,0,0,85,87,3,10,5,0,86,84,1,0,0,0,87,
        90,1,0,0,0,88,86,1,0,0,0,88,89,1,0,0,0,89,92,1,0,0,0,90,88,1,0,0,
        0,91,83,1,0,0,0,92,95,1,0,0,0,93,91,1,0,0,0,93,94,1,0,0,0,94,96,
        1,0,0,0,95,93,1,0,0,0,96,170,5,30,0,0,97,98,5,11,0,0,98,99,3,10,
        5,0,99,100,5,18,0,0,100,101,3,10,5,0,101,102,5,19,0,0,102,103,3,
        10,5,0,103,104,5,10,0,0,104,170,1,0,0,0,105,106,5,20,0,0,106,107,
        3,10,5,0,107,108,5,16,0,0,108,109,3,10,5,0,109,110,5,17,0,0,110,
        170,1,0,0,0,111,112,5,15,0,0,112,117,3,8,4,0,113,114,5,38,0,0,114,
        116,3,8,4,0,115,113,1,0,0,0,116,119,1,0,0,0,117,115,1,0,0,0,117,
        118,1,0,0,0,118,120,1,0,0,0,119,117,1,0,0,0,120,121,5,12,0,0,121,
        122,3,10,5,21,122,170,1,0,0,0,123,124,5,21,0,0,124,125,3,10,5,0,
        125,133,5,24,0,0,126,127,5,27,0,0,127,128,5,34,0,0,128,129,5,26,
        0,0,129,130,5,36,0,0,130,131,3,10,5,0,131,132,5,33,0,0,132,134,1,
        0,0,0,133,126,1,0,0,0,134,135,1,0,0,0,135,133,1,0,0,0,135,136,1,
        0,0,0,136,137,1,0,0,0,137,138,5,22,0,0,138,170,1,0,0,0,139,140,5,
        23,0,0,140,170,5,26,0,0,141,142,5,37,0,0,142,170,3,10,5,18,143,144,
        5,14,0,0,144,170,3,10,5,17,145,146,5,29,0,0,146,147,3,10,5,0,147,
        148,5,30,0,0,148,170,1,0,0,0,149,153,5,31,0,0,150,151,3,10,5,0,151,
        152,5,33,0,0,152,154,1,0,0,0,153,150,1,0,0,0,154,155,1,0,0,0,155,
        153,1,0,0,0,155,156,1,0,0,0,156,157,1,0,0,0,157,158,5,32,0,0,158,
        170,1,0,0,0,159,160,5,25,0,0,160,170,3,10,5,7,161,162,5,27,0,0,162,
        163,5,35,0,0,163,170,3,10,5,6,164,170,5,27,0,0,165,170,5,28,0,0,
        166,170,5,49,0,0,167,170,5,7,0,0,168,170,5,8,0,0,169,80,1,0,0,0,
        169,97,1,0,0,0,169,105,1,0,0,0,169,111,1,0,0,0,169,123,1,0,0,0,169,
        139,1,0,0,0,169,141,1,0,0,0,169,143,1,0,0,0,169,145,1,0,0,0,169,
        149,1,0,0,0,169,159,1,0,0,0,169,161,1,0,0,0,169,164,1,0,0,0,169,
        165,1,0,0,0,169,166,1,0,0,0,169,167,1,0,0,0,169,168,1,0,0,0,170,
        216,1,0,0,0,171,172,10,14,0,0,172,173,5,41,0,0,173,215,3,10,5,15,
        174,175,10,13,0,0,175,176,5,44,0,0,176,215,3,10,5,14,177,178,10,
        12,0,0,178,179,5,42,0,0,179,215,3,10,5,13,180,181,10,11,0,0,181,
        182,5,43,0,0,182,215,3,10,5,12,183,184,10,10,0,0,184,185,5,46,0,
        0,185,215,3,10,5,11,186,187,10,9,0,0,187,188,5,45,0,0,188,215,3,
        10,5,10,189,190,10,8,0,0,190,191,5,47,0,0,191,215,3,10,5,9,192,195,
        10,24,0,0,193,194,5,40,0,0,194,196,5,26,0,0,195,193,1,0,0,0,195,
        196,1,0,0,0,196,197,1,0,0,0,197,198,5,39,0,0,198,199,5,27,0,0,199,
        210,5,29,0,0,200,205,3,10,5,0,201,202,5,38,0,0,202,204,3,10,5,0,
        203,201,1,0,0,0,204,207,1,0,0,0,205,203,1,0,0,0,205,206,1,0,0,0,
        206,209,1,0,0,0,207,205,1,0,0,0,208,200,1,0,0,0,209,212,1,0,0,0,
        210,208,1,0,0,0,210,211,1,0,0,0,211,213,1,0,0,0,212,210,1,0,0,0,
        213,215,5,30,0,0,214,171,1,0,0,0,214,174,1,0,0,0,214,177,1,0,0,0,
        214,180,1,0,0,0,214,183,1,0,0,0,214,186,1,0,0,0,214,189,1,0,0,0,
        214,192,1,0,0,0,215,218,1,0,0,0,216,214,1,0,0,0,216,217,1,0,0,0,
        217,11,1,0,0,0,218,216,1,0,0,0,19,17,25,33,45,50,65,67,78,88,93,
        117,135,155,169,195,205,210,214,216
    ]

class YAPLParser ( Parser ):

    grammarFileName = "YAPL.g4"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "<INVALID>", "'(*'", "'*)'", "<INVALID>", "<INVALID>", 
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "'('", "')'", "'{'", "'}'", "';'", "':'", "'<-'", "'=>'", 
                     "'~'", "','", "'.'", "'@'", "'*'", "'+'", "'-'", "'/'", 
                     "'<'", "'<='", "'='" ]

    symbolicNames = [ "<INVALID>", "NEWLINE", "WS", "LINECOMMENT", "LINECOMMENTEOF", 
                      "BEGINCOMMENT", "ENDCOMMENT", "TRUE", "FALSE", "CLASS", 
                      "FI", "IF", "IN", "INHERITS", "ISVOID", "LET", "LOOP", 
                      "POOL", "THEN", "ELSE", "WHILE", "CASE", "ESAC", "NEW", 
                      "OF", "NOT", "TYPE", "ID", "INT_CONST", "LPAREN", 
                      "RPAREN", "LBRACE", "RBRACE", "SEMI", "COLON", "ASSIGN", 
                      "DARROW", "NEG", "COMMA", "PERIOD", "AT", "MUL", "ADD", 
                      "MINUS", "DIV", "LT", "LEQ", "EQ", "ERROR", "STR_CONST" ]

    RULE_program = 0
    RULE_klass = 1
    RULE_feature = 2
    RULE_formal = 3
    RULE_let_formal = 4
    RULE_expr = 5

    ruleNames =  [ "program", "klass", "feature", "formal", "let_formal", 
                   "expr" ]

    EOF = Token.EOF
    NEWLINE=1
    WS=2
    LINECOMMENT=3
    LINECOMMENTEOF=4
    BEGINCOMMENT=5
    ENDCOMMENT=6
    TRUE=7
    FALSE=8
    CLASS=9
    FI=10
    IF=11
    IN=12
    INHERITS=13
    ISVOID=14
    LET=15
    LOOP=16
    POOL=17
    THEN=18
    ELSE=19
    WHILE=20
    CASE=21
    ESAC=22
    NEW=23
    OF=24
    NOT=25
    TYPE=26
    ID=27
    INT_CONST=28
    LPAREN=29
    RPAREN=30
    LBRACE=31
    RBRACE=32
    SEMI=33
    COLON=34
    ASSIGN=35
    DARROW=36
    NEG=37
    COMMA=38
    PERIOD=39
    AT=40
    MUL=41
    ADD=42
    MINUS=43
    DIV=44
    LT=45
    LEQ=46
    EQ=47
    ERROR=48
    STR_CONST=49

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

        def klass(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.KlassContext)
            else:
                return self.getTypedRuleContext(YAPLParser.KlassContext,i)


        def SEMI(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.SEMI)
            else:
                return self.getToken(YAPLParser.SEMI, i)

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
            self.state = 15 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 12
                self.klass()
                self.state = 13
                self.match(YAPLParser.SEMI)
                self.state = 17 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==YAPLParser.CLASS):
                    break

            self.state = 19
            self.match(YAPLParser.EOF)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class KlassContext(ParserRuleContext):
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

        def LBRACE(self):
            return self.getToken(YAPLParser.LBRACE, 0)

        def RBRACE(self):
            return self.getToken(YAPLParser.RBRACE, 0)

        def INHERITS(self):
            return self.getToken(YAPLParser.INHERITS, 0)

        def feature(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.FeatureContext)
            else:
                return self.getTypedRuleContext(YAPLParser.FeatureContext,i)


        def SEMI(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.SEMI)
            else:
                return self.getToken(YAPLParser.SEMI, i)

        def getRuleIndex(self):
            return YAPLParser.RULE_klass

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitKlass" ):
                return visitor.visitKlass(self)
            else:
                return visitor.visitChildren(self)




    def klass(self):

        localctx = YAPLParser.KlassContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_klass)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 21
            self.match(YAPLParser.CLASS)
            self.state = 22
            self.match(YAPLParser.TYPE)
            self.state = 25
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if _la==YAPLParser.INHERITS:
                self.state = 23
                self.match(YAPLParser.INHERITS)
                self.state = 24
                self.match(YAPLParser.TYPE)


            self.state = 27
            self.match(YAPLParser.LBRACE)
            self.state = 33
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==YAPLParser.ID:
                self.state = 28
                self.feature()
                self.state = 29
                self.match(YAPLParser.SEMI)
                self.state = 35
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 36
            self.match(YAPLParser.RBRACE)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class FeatureContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser


        def getRuleIndex(self):
            return YAPLParser.RULE_feature

     
        def copyFrom(self, ctx:ParserRuleContext):
            super().copyFrom(ctx)



    class MethodContext(FeatureContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.FeatureContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)
        def LPAREN(self):
            return self.getToken(YAPLParser.LPAREN, 0)
        def RPAREN(self):
            return self.getToken(YAPLParser.RPAREN, 0)
        def COLON(self):
            return self.getToken(YAPLParser.COLON, 0)
        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)
        def LBRACE(self):
            return self.getToken(YAPLParser.LBRACE, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)

        def RBRACE(self):
            return self.getToken(YAPLParser.RBRACE, 0)
        def formal(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.FormalContext)
            else:
                return self.getTypedRuleContext(YAPLParser.FormalContext,i)

        def COMMA(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.COMMA)
            else:
                return self.getToken(YAPLParser.COMMA, i)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitMethod" ):
                return visitor.visitMethod(self)
            else:
                return visitor.visitChildren(self)


    class AttrContext(FeatureContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.FeatureContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)
        def COLON(self):
            return self.getToken(YAPLParser.COLON, 0)
        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)
        def ASSIGN(self):
            return self.getToken(YAPLParser.ASSIGN, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitAttr" ):
                return visitor.visitAttr(self)
            else:
                return visitor.visitChildren(self)



    def feature(self):

        localctx = YAPLParser.FeatureContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_feature)
        self._la = 0 # Token type
        try:
            self.state = 67
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,6,self._ctx)
            if la_ == 1:
                localctx = YAPLParser.MethodContext(self, localctx)
                self.enterOuterAlt(localctx, 1)
                self.state = 38
                self.match(YAPLParser.ID)
                self.state = 39
                self.match(YAPLParser.LPAREN)
                self.state = 50
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                while _la==YAPLParser.ID:
                    self.state = 40
                    self.formal()
                    self.state = 45
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    while _la==YAPLParser.COMMA:
                        self.state = 41
                        self.match(YAPLParser.COMMA)
                        self.state = 42
                        self.formal()
                        self.state = 47
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)

                    self.state = 52
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)

                self.state = 53
                self.match(YAPLParser.RPAREN)
                self.state = 54
                self.match(YAPLParser.COLON)
                self.state = 55
                self.match(YAPLParser.TYPE)
                self.state = 56
                self.match(YAPLParser.LBRACE)
                self.state = 57
                self.expr(0)
                self.state = 58
                self.match(YAPLParser.RBRACE)
                pass

            elif la_ == 2:
                localctx = YAPLParser.AttrContext(self, localctx)
                self.enterOuterAlt(localctx, 2)
                self.state = 60
                self.match(YAPLParser.ID)
                self.state = 61
                self.match(YAPLParser.COLON)
                self.state = 62
                self.match(YAPLParser.TYPE)
                self.state = 65
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if _la==YAPLParser.ASSIGN:
                    self.state = 63
                    self.match(YAPLParser.ASSIGN)
                    self.state = 64
                    self.expr(0)


                pass


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

        def COLON(self):
            return self.getToken(YAPLParser.COLON, 0)

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
        self.enterRule(localctx, 6, self.RULE_formal)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 69
            self.match(YAPLParser.ID)
            self.state = 70
            self.match(YAPLParser.COLON)
            self.state = 71
            self.match(YAPLParser.TYPE)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class Let_formalContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)

        def COLON(self):
            return self.getToken(YAPLParser.COLON, 0)

        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)

        def ASSIGN(self):
            return self.getToken(YAPLParser.ASSIGN, 0)

        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def getRuleIndex(self):
            return YAPLParser.RULE_let_formal

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitLet_formal" ):
                return visitor.visitLet_formal(self)
            else:
                return visitor.visitChildren(self)




    def let_formal(self):

        localctx = YAPLParser.Let_formalContext(self, self._ctx, self.state)
        self.enterRule(localctx, 8, self.RULE_let_formal)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 73
            self.match(YAPLParser.ID)
            self.state = 74
            self.match(YAPLParser.COLON)
            self.state = 75
            self.match(YAPLParser.TYPE)
            self.state = 78
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            if _la==YAPLParser.ASSIGN:
                self.state = 76
                self.match(YAPLParser.ASSIGN)
                self.state = 77
                self.expr(0)


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


    class MinusContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def MINUS(self):
            return self.getToken(YAPLParser.MINUS, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitMinus" ):
                return visitor.visitMinus(self)
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

        def PERIOD(self):
            return self.getToken(YAPLParser.PERIOD, 0)
        def ID(self):
            return self.getToken(YAPLParser.ID, 0)
        def LPAREN(self):
            return self.getToken(YAPLParser.LPAREN, 0)
        def RPAREN(self):
            return self.getToken(YAPLParser.RPAREN, 0)
        def AT(self):
            return self.getToken(YAPLParser.AT, 0)
        def TYPE(self):
            return self.getToken(YAPLParser.TYPE, 0)
        def COMMA(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.COMMA)
            else:
                return self.getToken(YAPLParser.COMMA, i)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitDispatch" ):
                return visitor.visitDispatch(self)
            else:
                return visitor.visitChildren(self)


    class Str_constContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def STR_CONST(self):
            return self.getToken(YAPLParser.STR_CONST, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitStr_const" ):
                return visitor.visitStr_const(self)
            else:
                return visitor.visitChildren(self)


    class MulContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def MUL(self):
            return self.getToken(YAPLParser.MUL, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitMul" ):
                return visitor.visitMul(self)
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


    class SelfdispatchContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)
        def LPAREN(self):
            return self.getToken(YAPLParser.LPAREN, 0)
        def RPAREN(self):
            return self.getToken(YAPLParser.RPAREN, 0)
        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def COMMA(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.COMMA)
            else:
                return self.getToken(YAPLParser.COMMA, i)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitSelfdispatch" ):
                return visitor.visitSelfdispatch(self)
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


    class DivContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def DIV(self):
            return self.getToken(YAPLParser.DIV, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitDiv" ):
                return visitor.visitDiv(self)
            else:
                return visitor.visitChildren(self)


    class NegContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def NEG(self):
            return self.getToken(YAPLParser.NEG, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitNeg" ):
                return visitor.visitNeg(self)
            else:
                return visitor.visitChildren(self)


    class ParenContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def LPAREN(self):
            return self.getToken(YAPLParser.LPAREN, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)

        def RPAREN(self):
            return self.getToken(YAPLParser.RPAREN, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitParen" ):
                return visitor.visitParen(self)
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


    class LessThanContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def LT(self):
            return self.getToken(YAPLParser.LT, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitLessThan" ):
                return visitor.visitLessThan(self)
            else:
                return visitor.visitChildren(self)


    class LetContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def LET(self):
            return self.getToken(YAPLParser.LET, 0)
        def let_formal(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.Let_formalContext)
            else:
                return self.getTypedRuleContext(YAPLParser.Let_formalContext,i)

        def IN(self):
            return self.getToken(YAPLParser.IN, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)

        def COMMA(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.COMMA)
            else:
                return self.getToken(YAPLParser.COMMA, i)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitLet" ):
                return visitor.visitLet(self)
            else:
                return visitor.visitChildren(self)


    class BlockContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def LBRACE(self):
            return self.getToken(YAPLParser.LBRACE, 0)
        def RBRACE(self):
            return self.getToken(YAPLParser.RBRACE, 0)
        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def SEMI(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.SEMI)
            else:
                return self.getToken(YAPLParser.SEMI, i)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitBlock" ):
                return visitor.visitBlock(self)
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


    class CaseContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def CASE(self):
            return self.getToken(YAPLParser.CASE, 0)
        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def OF(self):
            return self.getToken(YAPLParser.OF, 0)
        def ESAC(self):
            return self.getToken(YAPLParser.ESAC, 0)
        def ID(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.ID)
            else:
                return self.getToken(YAPLParser.ID, i)
        def COLON(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.COLON)
            else:
                return self.getToken(YAPLParser.COLON, i)
        def TYPE(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.TYPE)
            else:
                return self.getToken(YAPLParser.TYPE, i)
        def DARROW(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.DARROW)
            else:
                return self.getToken(YAPLParser.DARROW, i)
        def SEMI(self, i:int=None):
            if i is None:
                return self.getTokens(YAPLParser.SEMI)
            else:
                return self.getToken(YAPLParser.SEMI, i)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitCase" ):
                return visitor.visitCase(self)
            else:
                return visitor.visitChildren(self)


    class LessThanOrEqualToContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def LEQ(self):
            return self.getToken(YAPLParser.LEQ, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitLessThanOrEqualTo" ):
                return visitor.visitLessThanOrEqualTo(self)
            else:
                return visitor.visitChildren(self)


    class AddContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def ADD(self):
            return self.getToken(YAPLParser.ADD, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitAdd" ):
                return visitor.visitAdd(self)
            else:
                return visitor.visitChildren(self)


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


    class Bool_trueContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def TRUE(self):
            return self.getToken(YAPLParser.TRUE, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitBool_true" ):
                return visitor.visitBool_true(self)
            else:
                return visitor.visitChildren(self)


    class EqContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def expr(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(YAPLParser.ExprContext)
            else:
                return self.getTypedRuleContext(YAPLParser.ExprContext,i)

        def EQ(self):
            return self.getToken(YAPLParser.EQ, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitEq" ):
                return visitor.visitEq(self)
            else:
                return visitor.visitChildren(self)


    class Int_constContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def INT_CONST(self):
            return self.getToken(YAPLParser.INT_CONST, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitInt_const" ):
                return visitor.visitInt_const(self)
            else:
                return visitor.visitChildren(self)


    class Bool_falseContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def FALSE(self):
            return self.getToken(YAPLParser.FALSE, 0)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitBool_false" ):
                return visitor.visitBool_false(self)
            else:
                return visitor.visitChildren(self)


    class AssignContext(ExprContext):

        def __init__(self, parser, ctx:ParserRuleContext): # actually a YAPLParser.ExprContext
            super().__init__(parser)
            self.copyFrom(ctx)

        def ID(self):
            return self.getToken(YAPLParser.ID, 0)
        def ASSIGN(self):
            return self.getToken(YAPLParser.ASSIGN, 0)
        def expr(self):
            return self.getTypedRuleContext(YAPLParser.ExprContext,0)


        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitAssign" ):
                return visitor.visitAssign(self)
            else:
                return visitor.visitChildren(self)



    def expr(self, _p:int=0):
        _parentctx = self._ctx
        _parentState = self.state
        localctx = YAPLParser.ExprContext(self, self._ctx, _parentState)
        _prevctx = localctx
        _startState = 10
        self.enterRecursionRule(localctx, 10, self.RULE_expr, _p)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 169
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,13,self._ctx)
            if la_ == 1:
                localctx = YAPLParser.SelfdispatchContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx

                self.state = 81
                self.match(YAPLParser.ID)
                self.state = 82
                self.match(YAPLParser.LPAREN)
                self.state = 93
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                while (((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << YAPLParser.TRUE) | (1 << YAPLParser.FALSE) | (1 << YAPLParser.IF) | (1 << YAPLParser.ISVOID) | (1 << YAPLParser.LET) | (1 << YAPLParser.WHILE) | (1 << YAPLParser.CASE) | (1 << YAPLParser.NEW) | (1 << YAPLParser.NOT) | (1 << YAPLParser.ID) | (1 << YAPLParser.INT_CONST) | (1 << YAPLParser.LPAREN) | (1 << YAPLParser.LBRACE) | (1 << YAPLParser.NEG) | (1 << YAPLParser.STR_CONST))) != 0):
                    self.state = 83
                    self.expr(0)
                    self.state = 88
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    while _la==YAPLParser.COMMA:
                        self.state = 84
                        self.match(YAPLParser.COMMA)
                        self.state = 85
                        self.expr(0)
                        self.state = 90
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)

                    self.state = 95
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)

                self.state = 96
                self.match(YAPLParser.RPAREN)
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
                localctx = YAPLParser.LetContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 111
                self.match(YAPLParser.LET)
                self.state = 112
                self.let_formal()
                self.state = 117
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                while _la==YAPLParser.COMMA:
                    self.state = 113
                    self.match(YAPLParser.COMMA)
                    self.state = 114
                    self.let_formal()
                    self.state = 119
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)

                self.state = 120
                self.match(YAPLParser.IN)
                self.state = 121
                self.expr(21)
                pass

            elif la_ == 5:
                localctx = YAPLParser.CaseContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 123
                self.match(YAPLParser.CASE)
                self.state = 124
                self.expr(0)
                self.state = 125
                self.match(YAPLParser.OF)
                self.state = 133 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                while True:
                    self.state = 126
                    self.match(YAPLParser.ID)
                    self.state = 127
                    self.match(YAPLParser.COLON)
                    self.state = 128
                    self.match(YAPLParser.TYPE)
                    self.state = 129
                    self.match(YAPLParser.DARROW)
                    self.state = 130
                    self.expr(0)
                    self.state = 131
                    self.match(YAPLParser.SEMI)
                    self.state = 135 
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    if not (_la==YAPLParser.ID):
                        break

                self.state = 137
                self.match(YAPLParser.ESAC)
                pass

            elif la_ == 6:
                localctx = YAPLParser.NewContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 139
                self.match(YAPLParser.NEW)
                self.state = 140
                self.match(YAPLParser.TYPE)
                pass

            elif la_ == 7:
                localctx = YAPLParser.NegContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 141
                self.match(YAPLParser.NEG)
                self.state = 142
                self.expr(18)
                pass

            elif la_ == 8:
                localctx = YAPLParser.IsvoidContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 143
                self.match(YAPLParser.ISVOID)
                self.state = 144
                self.expr(17)
                pass

            elif la_ == 9:
                localctx = YAPLParser.ParenContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 145
                self.match(YAPLParser.LPAREN)
                self.state = 146
                self.expr(0)
                self.state = 147
                self.match(YAPLParser.RPAREN)
                pass

            elif la_ == 10:
                localctx = YAPLParser.BlockContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 149
                self.match(YAPLParser.LBRACE)
                self.state = 153 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                while True:
                    self.state = 150
                    self.expr(0)
                    self.state = 151
                    self.match(YAPLParser.SEMI)
                    self.state = 155 
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << YAPLParser.TRUE) | (1 << YAPLParser.FALSE) | (1 << YAPLParser.IF) | (1 << YAPLParser.ISVOID) | (1 << YAPLParser.LET) | (1 << YAPLParser.WHILE) | (1 << YAPLParser.CASE) | (1 << YAPLParser.NEW) | (1 << YAPLParser.NOT) | (1 << YAPLParser.ID) | (1 << YAPLParser.INT_CONST) | (1 << YAPLParser.LPAREN) | (1 << YAPLParser.LBRACE) | (1 << YAPLParser.NEG) | (1 << YAPLParser.STR_CONST))) != 0)):
                        break

                self.state = 157
                self.match(YAPLParser.RBRACE)
                pass

            elif la_ == 11:
                localctx = YAPLParser.NotContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 159
                self.match(YAPLParser.NOT)
                self.state = 160
                self.expr(7)
                pass

            elif la_ == 12:
                localctx = YAPLParser.AssignContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 161
                self.match(YAPLParser.ID)
                self.state = 162
                self.match(YAPLParser.ASSIGN)
                self.state = 163
                self.expr(6)
                pass

            elif la_ == 13:
                localctx = YAPLParser.IdContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 164
                self.match(YAPLParser.ID)
                pass

            elif la_ == 14:
                localctx = YAPLParser.Int_constContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 165
                self.match(YAPLParser.INT_CONST)
                pass

            elif la_ == 15:
                localctx = YAPLParser.Str_constContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 166
                self.match(YAPLParser.STR_CONST)
                pass

            elif la_ == 16:
                localctx = YAPLParser.Bool_trueContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 167
                self.match(YAPLParser.TRUE)
                pass

            elif la_ == 17:
                localctx = YAPLParser.Bool_falseContext(self, localctx)
                self._ctx = localctx
                _prevctx = localctx
                self.state = 168
                self.match(YAPLParser.FALSE)
                pass


            self._ctx.stop = self._input.LT(-1)
            self.state = 216
            self._errHandler.sync(self)
            _alt = self._interp.adaptivePredict(self._input,18,self._ctx)
            while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                if _alt==1:
                    if self._parseListeners is not None:
                        self.triggerExitRuleEvent()
                    _prevctx = localctx
                    self.state = 214
                    self._errHandler.sync(self)
                    la_ = self._interp.adaptivePredict(self._input,17,self._ctx)
                    if la_ == 1:
                        localctx = YAPLParser.MulContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 171
                        if not self.precpred(self._ctx, 14):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 14)")
                        self.state = 172
                        self.match(YAPLParser.MUL)
                        self.state = 173
                        self.expr(15)
                        pass

                    elif la_ == 2:
                        localctx = YAPLParser.DivContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 174
                        if not self.precpred(self._ctx, 13):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 13)")
                        self.state = 175
                        self.match(YAPLParser.DIV)
                        self.state = 176
                        self.expr(14)
                        pass

                    elif la_ == 3:
                        localctx = YAPLParser.AddContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 177
                        if not self.precpred(self._ctx, 12):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 12)")
                        self.state = 178
                        self.match(YAPLParser.ADD)
                        self.state = 179
                        self.expr(13)
                        pass

                    elif la_ == 4:
                        localctx = YAPLParser.MinusContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 180
                        if not self.precpred(self._ctx, 11):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 11)")
                        self.state = 181
                        self.match(YAPLParser.MINUS)
                        self.state = 182
                        self.expr(12)
                        pass

                    elif la_ == 5:
                        localctx = YAPLParser.LessThanOrEqualToContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 183
                        if not self.precpred(self._ctx, 10):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 10)")
                        self.state = 184
                        self.match(YAPLParser.LEQ)
                        self.state = 185
                        self.expr(11)
                        pass

                    elif la_ == 6:
                        localctx = YAPLParser.LessThanContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 186
                        if not self.precpred(self._ctx, 9):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 9)")
                        self.state = 187
                        self.match(YAPLParser.LT)
                        self.state = 188
                        self.expr(10)
                        pass

                    elif la_ == 7:
                        localctx = YAPLParser.EqContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 189
                        if not self.precpred(self._ctx, 8):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 8)")
                        self.state = 190
                        self.match(YAPLParser.EQ)
                        self.state = 191
                        self.expr(9)
                        pass

                    elif la_ == 8:
                        localctx = YAPLParser.DispatchContext(self, YAPLParser.ExprContext(self, _parentctx, _parentState))
                        self.pushNewRecursionContext(localctx, _startState, self.RULE_expr)
                        self.state = 192
                        if not self.precpred(self._ctx, 24):
                            from antlr4.error.Errors import FailedPredicateException
                            raise FailedPredicateException(self, "self.precpred(self._ctx, 24)")
                        self.state = 195
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)
                        if _la==YAPLParser.AT:
                            self.state = 193
                            self.match(YAPLParser.AT)
                            self.state = 194
                            self.match(YAPLParser.TYPE)


                        self.state = 197
                        self.match(YAPLParser.PERIOD)
                        self.state = 198
                        self.match(YAPLParser.ID)
                        self.state = 199
                        self.match(YAPLParser.LPAREN)
                        self.state = 210
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)
                        while (((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << YAPLParser.TRUE) | (1 << YAPLParser.FALSE) | (1 << YAPLParser.IF) | (1 << YAPLParser.ISVOID) | (1 << YAPLParser.LET) | (1 << YAPLParser.WHILE) | (1 << YAPLParser.CASE) | (1 << YAPLParser.NEW) | (1 << YAPLParser.NOT) | (1 << YAPLParser.ID) | (1 << YAPLParser.INT_CONST) | (1 << YAPLParser.LPAREN) | (1 << YAPLParser.LBRACE) | (1 << YAPLParser.NEG) | (1 << YAPLParser.STR_CONST))) != 0):
                            self.state = 200
                            self.expr(0)
                            self.state = 205
                            self._errHandler.sync(self)
                            _la = self._input.LA(1)
                            while _la==YAPLParser.COMMA:
                                self.state = 201
                                self.match(YAPLParser.COMMA)
                                self.state = 202
                                self.expr(0)
                                self.state = 207
                                self._errHandler.sync(self)
                                _la = self._input.LA(1)

                            self.state = 212
                            self._errHandler.sync(self)
                            _la = self._input.LA(1)

                        self.state = 213
                        self.match(YAPLParser.RPAREN)
                        pass

             
                self.state = 218
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,18,self._ctx)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.unrollRecursionContexts(_parentctx)
        return localctx



    def sempred(self, localctx:RuleContext, ruleIndex:int, predIndex:int):
        if self._predicates == None:
            self._predicates = dict()
        self._predicates[5] = self.expr_sempred
        pred = self._predicates.get(ruleIndex, None)
        if pred is None:
            raise Exception("No predicate with index:" + str(ruleIndex))
        else:
            return pred(localctx, predIndex)

    def expr_sempred(self, localctx:ExprContext, predIndex:int):
            if predIndex == 0:
                return self.precpred(self._ctx, 14)
         

            if predIndex == 1:
                return self.precpred(self._ctx, 13)
         

            if predIndex == 2:
                return self.precpred(self._ctx, 12)
         

            if predIndex == 3:
                return self.precpred(self._ctx, 11)
         

            if predIndex == 4:
                return self.precpred(self._ctx, 10)
         

            if predIndex == 5:
                return self.precpred(self._ctx, 9)
         

            if predIndex == 6:
                return self.precpred(self._ctx, 8)
         

            if predIndex == 7:
                return self.precpred(self._ctx, 24)
         




