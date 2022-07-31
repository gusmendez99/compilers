# Generated from ./grammar/YAPL.g4 by ANTLR 4.9.2
# encoding: utf-8
from antlr4 import *
from io import StringIO
import sys
if sys.version_info[1] > 5:
	from typing import TextIO
else:
	from typing.io import TextIO


def serializedATN():
    with StringIO() as buf:
        buf.write("\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\63")
        buf.write("\u00de\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7")
        buf.write("\3\2\3\2\3\2\6\2\22\n\2\r\2\16\2\23\3\2\3\2\3\3\3\3\3")
        buf.write("\3\3\3\5\3\34\n\3\3\3\3\3\3\3\3\3\7\3\"\n\3\f\3\16\3%")
        buf.write("\13\3\3\3\3\3\3\4\3\4\3\4\3\4\3\4\7\4.\n\4\f\4\16\4\61")
        buf.write("\13\4\7\4\63\n\4\f\4\16\4\66\13\4\3\4\3\4\3\4\3\4\3\4")
        buf.write("\3\4\3\4\3\4\3\4\3\4\3\4\3\4\5\4D\n\4\5\4F\n\4\3\5\3\5")
        buf.write("\3\5\3\5\3\6\3\6\3\6\3\6\3\6\5\6Q\n\6\3\7\3\7\3\7\3\7")
        buf.write("\3\7\3\7\7\7Y\n\7\f\7\16\7\\\13\7\7\7^\n\7\f\7\16\7a\13")
        buf.write("\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7")
        buf.write("\3\7\3\7\3\7\3\7\3\7\3\7\7\7v\n\7\f\7\16\7y\13\7\3\7\3")
        buf.write("\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\6\7\u0088")
        buf.write("\n\7\r\7\16\7\u0089\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3")
        buf.write("\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\6\7\u009c\n\7\r\7\16\7")
        buf.write("\u009d\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7")
        buf.write("\5\7\u00ac\n\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7")
        buf.write("\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3")
        buf.write("\7\5\7\u00c6\n\7\3\7\3\7\3\7\3\7\3\7\3\7\7\7\u00ce\n\7")
        buf.write("\f\7\16\7\u00d1\13\7\7\7\u00d3\n\7\f\7\16\7\u00d6\13\7")
        buf.write("\3\7\7\7\u00d9\n\7\f\7\16\7\u00dc\13\7\3\7\2\3\f\b\2\4")
        buf.write("\6\b\n\f\2\2\2\u00ff\2\21\3\2\2\2\4\27\3\2\2\2\6E\3\2")
        buf.write("\2\2\bG\3\2\2\2\nK\3\2\2\2\f\u00ab\3\2\2\2\16\17\5\4\3")
        buf.write("\2\17\20\7#\2\2\20\22\3\2\2\2\21\16\3\2\2\2\22\23\3\2")
        buf.write("\2\2\23\21\3\2\2\2\23\24\3\2\2\2\24\25\3\2\2\2\25\26\7")
        buf.write("\2\2\3\26\3\3\2\2\2\27\30\7\13\2\2\30\33\7\34\2\2\31\32")
        buf.write("\7\17\2\2\32\34\7\34\2\2\33\31\3\2\2\2\33\34\3\2\2\2\34")
        buf.write("\35\3\2\2\2\35#\7!\2\2\36\37\5\6\4\2\37 \7#\2\2 \"\3\2")
        buf.write("\2\2!\36\3\2\2\2\"%\3\2\2\2#!\3\2\2\2#$\3\2\2\2$&\3\2")
        buf.write("\2\2%#\3\2\2\2&\'\7\"\2\2\'\5\3\2\2\2()\7\35\2\2)\64\7")
        buf.write("\37\2\2*/\5\b\5\2+,\7(\2\2,.\5\b\5\2-+\3\2\2\2.\61\3\2")
        buf.write("\2\2/-\3\2\2\2/\60\3\2\2\2\60\63\3\2\2\2\61/\3\2\2\2\62")
        buf.write("*\3\2\2\2\63\66\3\2\2\2\64\62\3\2\2\2\64\65\3\2\2\2\65")
        buf.write("\67\3\2\2\2\66\64\3\2\2\2\678\7 \2\289\7$\2\29:\7\34\2")
        buf.write("\2:;\7!\2\2;<\5\f\7\2<=\7\"\2\2=F\3\2\2\2>?\7\35\2\2?")
        buf.write("@\7$\2\2@C\7\34\2\2AB\7%\2\2BD\5\f\7\2CA\3\2\2\2CD\3\2")
        buf.write("\2\2DF\3\2\2\2E(\3\2\2\2E>\3\2\2\2F\7\3\2\2\2GH\7\35\2")
        buf.write("\2HI\7$\2\2IJ\7\34\2\2J\t\3\2\2\2KL\7\35\2\2LM\7$\2\2")
        buf.write("MP\7\34\2\2NO\7%\2\2OQ\5\f\7\2PN\3\2\2\2PQ\3\2\2\2Q\13")
        buf.write("\3\2\2\2RS\b\7\1\2ST\7\35\2\2T_\7\37\2\2UZ\5\f\7\2VW\7")
        buf.write("(\2\2WY\5\f\7\2XV\3\2\2\2Y\\\3\2\2\2ZX\3\2\2\2Z[\3\2\2")
        buf.write("\2[^\3\2\2\2\\Z\3\2\2\2]U\3\2\2\2^a\3\2\2\2_]\3\2\2\2")
        buf.write("_`\3\2\2\2`b\3\2\2\2a_\3\2\2\2b\u00ac\7 \2\2cd\7\r\2\2")
        buf.write("de\5\f\7\2ef\7\24\2\2fg\5\f\7\2gh\7\25\2\2hi\5\f\7\2i")
        buf.write("j\7\f\2\2j\u00ac\3\2\2\2kl\7\26\2\2lm\5\f\7\2mn\7\22\2")
        buf.write("\2no\5\f\7\2op\7\23\2\2p\u00ac\3\2\2\2qr\7\21\2\2rw\5")
        buf.write("\n\6\2st\7(\2\2tv\5\n\6\2us\3\2\2\2vy\3\2\2\2wu\3\2\2")
        buf.write("\2wx\3\2\2\2xz\3\2\2\2yw\3\2\2\2z{\7\16\2\2{|\5\f\7\27")
        buf.write("|\u00ac\3\2\2\2}~\7\27\2\2~\177\5\f\7\2\177\u0087\7\32")
        buf.write("\2\2\u0080\u0081\7\35\2\2\u0081\u0082\7$\2\2\u0082\u0083")
        buf.write("\7\34\2\2\u0083\u0084\7&\2\2\u0084\u0085\5\f\7\2\u0085")
        buf.write("\u0086\7#\2\2\u0086\u0088\3\2\2\2\u0087\u0080\3\2\2\2")
        buf.write("\u0088\u0089\3\2\2\2\u0089\u0087\3\2\2\2\u0089\u008a\3")
        buf.write("\2\2\2\u008a\u008b\3\2\2\2\u008b\u008c\7\30\2\2\u008c")
        buf.write("\u00ac\3\2\2\2\u008d\u008e\7\31\2\2\u008e\u00ac\7\34\2")
        buf.write("\2\u008f\u0090\7\'\2\2\u0090\u00ac\5\f\7\24\u0091\u0092")
        buf.write("\7\20\2\2\u0092\u00ac\5\f\7\23\u0093\u0094\7\37\2\2\u0094")
        buf.write("\u0095\5\f\7\2\u0095\u0096\7 \2\2\u0096\u00ac\3\2\2\2")
        buf.write("\u0097\u009b\7!\2\2\u0098\u0099\5\f\7\2\u0099\u009a\7")
        buf.write("#\2\2\u009a\u009c\3\2\2\2\u009b\u0098\3\2\2\2\u009c\u009d")
        buf.write("\3\2\2\2\u009d\u009b\3\2\2\2\u009d\u009e\3\2\2\2\u009e")
        buf.write("\u009f\3\2\2\2\u009f\u00a0\7\"\2\2\u00a0\u00ac\3\2\2\2")
        buf.write("\u00a1\u00a2\7\33\2\2\u00a2\u00ac\5\f\7\t\u00a3\u00a4")
        buf.write("\7\35\2\2\u00a4\u00a5\7%\2\2\u00a5\u00ac\5\f\7\b\u00a6")
        buf.write("\u00ac\7\35\2\2\u00a7\u00ac\7\36\2\2\u00a8\u00ac\7\63")
        buf.write("\2\2\u00a9\u00ac\7\t\2\2\u00aa\u00ac\7\n\2\2\u00abR\3")
        buf.write("\2\2\2\u00abc\3\2\2\2\u00abk\3\2\2\2\u00abq\3\2\2\2\u00ab")
        buf.write("}\3\2\2\2\u00ab\u008d\3\2\2\2\u00ab\u008f\3\2\2\2\u00ab")
        buf.write("\u0091\3\2\2\2\u00ab\u0093\3\2\2\2\u00ab\u0097\3\2\2\2")
        buf.write("\u00ab\u00a1\3\2\2\2\u00ab\u00a3\3\2\2\2\u00ab\u00a6\3")
        buf.write("\2\2\2\u00ab\u00a7\3\2\2\2\u00ab\u00a8\3\2\2\2\u00ab\u00a9")
        buf.write("\3\2\2\2\u00ab\u00aa\3\2\2\2\u00ac\u00da\3\2\2\2\u00ad")
        buf.write("\u00ae\f\20\2\2\u00ae\u00af\7+\2\2\u00af\u00d9\5\f\7\21")
        buf.write("\u00b0\u00b1\f\17\2\2\u00b1\u00b2\7.\2\2\u00b2\u00d9\5")
        buf.write("\f\7\20\u00b3\u00b4\f\16\2\2\u00b4\u00b5\7,\2\2\u00b5")
        buf.write("\u00d9\5\f\7\17\u00b6\u00b7\f\r\2\2\u00b7\u00b8\7-\2\2")
        buf.write("\u00b8\u00d9\5\f\7\16\u00b9\u00ba\f\f\2\2\u00ba\u00bb")
        buf.write("\7\60\2\2\u00bb\u00d9\5\f\7\r\u00bc\u00bd\f\13\2\2\u00bd")
        buf.write("\u00be\7/\2\2\u00be\u00d9\5\f\7\f\u00bf\u00c0\f\n\2\2")
        buf.write("\u00c0\u00c1\7\61\2\2\u00c1\u00d9\5\f\7\13\u00c2\u00c5")
        buf.write("\f\32\2\2\u00c3\u00c4\7*\2\2\u00c4\u00c6\7\34\2\2\u00c5")
        buf.write("\u00c3\3\2\2\2\u00c5\u00c6\3\2\2\2\u00c6\u00c7\3\2\2\2")
        buf.write("\u00c7\u00c8\7)\2\2\u00c8\u00c9\7\35\2\2\u00c9\u00d4\7")
        buf.write("\37\2\2\u00ca\u00cf\5\f\7\2\u00cb\u00cc\7(\2\2\u00cc\u00ce")
        buf.write("\5\f\7\2\u00cd\u00cb\3\2\2\2\u00ce\u00d1\3\2\2\2\u00cf")
        buf.write("\u00cd\3\2\2\2\u00cf\u00d0\3\2\2\2\u00d0\u00d3\3\2\2\2")
        buf.write("\u00d1\u00cf\3\2\2\2\u00d2\u00ca\3\2\2\2\u00d3\u00d6\3")
        buf.write("\2\2\2\u00d4\u00d2\3\2\2\2\u00d4\u00d5\3\2\2\2\u00d5\u00d7")
        buf.write("\3\2\2\2\u00d6\u00d4\3\2\2\2\u00d7\u00d9\7 \2\2\u00d8")
        buf.write("\u00ad\3\2\2\2\u00d8\u00b0\3\2\2\2\u00d8\u00b3\3\2\2\2")
        buf.write("\u00d8\u00b6\3\2\2\2\u00d8\u00b9\3\2\2\2\u00d8\u00bc\3")
        buf.write("\2\2\2\u00d8\u00bf\3\2\2\2\u00d8\u00c2\3\2\2\2\u00d9\u00dc")
        buf.write("\3\2\2\2\u00da\u00d8\3\2\2\2\u00da\u00db\3\2\2\2\u00db")
        buf.write("\r\3\2\2\2\u00dc\u00da\3\2\2\2\25\23\33#/\64CEPZ_w\u0089")
        buf.write("\u009d\u00ab\u00c5\u00cf\u00d4\u00d8\u00da")
        return buf.getvalue()


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
        self.checkVersion("4.9.2")
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
         




