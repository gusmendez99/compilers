from yapl.grammar.YAPLParser import YAPLParser
from yapl.grammar.YAPLVisitor import YAPLVisitor
from yapl.models.nodes import *


class ASTVisitor(YAPLVisitor):

    # Custom visitor
    def visitStart(self, ctx: YAPLParser.StartContext):
        return self.visit(ctx.program())

    def visitInt(self, ctx: YAPLParser.IntContext):
        node = IntegerNode(ctx.INT().getText())
        node.set_line(ctx.INT().symbol.line)
        return node

    def visitId(self, ctx: YAPLParser.IdContext):
        node = ObjectNode(ctx.ID().getText())
        node.set_line(ctx.ID().symbol.line)
        return node

    def visitAdd(self, ctx: YAPLParser.AddContext):
        left = self.visit(ctx.expr(0))
        right = self.visit(ctx.expr(1))
        node = PlusNode(left, right)
        node.set_line(ctx.ADD().symbol.line)
        return node

    def visitAssignment(self, ctx: YAPLParser.AssignmentContext):
        expr = self.visit(ctx.expr())
        node = AssignNode(ctx.ID().getText(), expr)
        node.set_line(ctx.ASSIGNMENT().symbol.line)
        return node

    def visitAttribute(self, ctx: YAPLParser.AttributeContext):
        if ctx.expr() is not None:
            expr = self.visit(ctx.expr())
            node = AttributeNode(ctx.ID().getText(), ctx.TYPE().getText(), expr)
            node.set_line(ctx.ID().symbol.line)
            return node
        node = AttributeNode(ctx.ID().getText(), ctx.TYPE().getText(), None)
        node.set_line(ctx.ID().symbol.line)
        return node

    def visitBlock(self, ctx: YAPLParser.BlockContext):
        expr_list = []
        for expr in ctx.expr():
            expr_list.append(self.visit(expr))
        node = BlockNode(expr_list)
        # node.set_line(ctx.???().symbol.line)
        return node

    def visitCall(self, ctx: YAPLParser.CallContext):
        instance = "self"
        method = ctx.ID().getText()
        arguments = []
        for expr in ctx.expr():
            arg = self.visit(expr)
            arguments.append(arg)
        if method == "in_string" or method == "in_int":
            node = ScanNode(method)
            node.set_line(ctx.ID().symbol.line)
            return node
        if method == "out_string":
            node = PrintStringNode(arguments[0])
            node.set_line(ctx.ID().symbol.line)
            return node
        if method == "out_int":
            node = PrintIntegerNode(arguments[0])
            node.set_line(ctx.ID().symbol.line)
            return node
        node = DynamicDispatchNode(instance, method, arguments)
        node.set_line(ctx.ID().symbol.line)
        return node

    def visitCase(self, ctx: YAPLParser.CaseContext):
        expr = self.visit(ctx.expr(0))
        actions = []
        for i in range(1, len(ctx.expr())):
            current_expr = self.visit(ctx.expr(i))
            action = ActionNode(ctx.ID(i - 1).getText(), ctx.TYPE(i - 1).getText(), current_expr)
            action.set_line(ctx.ID(i-1).symbol.line)
            actions.append(action)
        node = CaseNode(expr, actions)
        node.set_line(ctx.ID().symbol.line)
        return node

    def visitClass_exp(self, ctx: YAPLParser.Class_expContext):
        name = ctx.TYPE(0).getText()
        parent = None
        if len(ctx.TYPE()) > 1:
            parent = ctx.TYPE(1).getText()
        features = []
        for f in ctx.feature():
            feature = self.visit(f)
            features.append(feature)
        node = ClassNode(name, parent, features)
        node.set_line(ctx.CLASS().symbol.line)
        return node

    def visitClass_list(self, ctx: YAPLParser.Class_listContext):
        class_list = [self.visit(ctx.class_exp())]
        program = self.visit(ctx.program())
        class_list.extend(program.class_list)
        node = ProgramNode(class_list)
        # node.set_line(ctx.???().symbol.line)
        return node

    def visitDeclaration(self, ctx: YAPLParser.DeclarationContext):
        idx_token = ctx.ID().getText()
        type_token = ctx.TYPE().getText()
        expr = None
        if ctx.expr() is not None:
            expr = self.visit(ctx.expr())
        node = DeclarationNode(idx_token, type_token, expr)
        node.set_line(ctx.ID().symbol.line)
        return node

    def visitDispatch(self, ctx: YAPLParser.DispatchContext):
        expr = self.visit(ctx.expr(0))
        method = ctx.ID().getText()
        arguments = []
        for i in range(1, len(ctx.expr())):
            arg = self.visit(ctx.expr(i))
            arguments.append(arg)
        if ctx.TYPE() is not None:
            t = ctx.TYPE().getText()
            node = StaticDispatchNode(expr, t, method, arguments)
            node.set_line(ctx.ID().symbol.line)
            return node
        if method == "in_string" or method == "in_int":
            node = ScanNode(method)
            node.set_line(ctx.ID().symbol.line)
            return node
        if method == "out_string":
            node = PrintStringNode(arguments[0])
            node.set_line(ctx.ID().symbol.line)
            return node
        if method == "out_int":
            node = PrintIntegerNode(arguments[0])
            node.set_line(ctx.ID().symbol.line)
            return node
        node = DynamicDispatchNode(expr, method, arguments)
        node.set_line(ctx.ID().symbol.line)
        return node

    def visitDivision(self, ctx: YAPLParser.DivisionContext):
        left = self.visit(ctx.expr(0))
        right = self.visit(ctx.expr(1))
        node = DivNode(left, right)
        node.set_line(ctx.DIV().symbol.line)
        return node

    def visitEqual(self, ctx: YAPLParser.EqualContext):
        left = self.visit(ctx.expr(0))
        right = self.visit(ctx.expr(1))
        node = EqualNode(left, right)
        node.set_line(ctx.EQ().symbol.line)
        return node

    def visitFalse(self, ctx: YAPLParser.FalseContext):
        node = BooleanNode(ctx.FALSE().getText())
        node.set_line(ctx.FALSE().symbol.line)
        return node

    def visitFormal(self, ctx: YAPLParser.FormalContext):
        node = ParamNode(ctx.ID().getText(), ctx.TYPE().getText())
        node.set_line(ctx.ID().symbol.line)
        return node

    def visitIf(self, ctx: YAPLParser.IfContext):
        predicate = self.visit(ctx.expr(0))
        then_expr = self.visit(ctx.expr(1))
        else_expr = self.visit(ctx.expr(2))
        node = IfNode(predicate, then_expr, else_expr)
        node.set_line(ctx.IF().symbol.line)
        return node

    def visitIsVoid(self, ctx: YAPLParser.IsVoidContext):
        expr = self.visit(ctx.expr())
        node = IsVoidNode(expr)
        node.set_line(ctx.ISVOID().symbol.line)
        return node

    def visitLessEqual(self, ctx: YAPLParser.LessEqualContext):
        left = self.visit(ctx.expr(0))
        right = self.visit(ctx.expr(1))
        node = LessEqualNode(left, right)
        node.set_line(ctx.LE().symbol.line)
        return node

    def visitLessThan(self, ctx: YAPLParser.LessThanContext):
        left = self.visit(ctx.expr(0))
        right = self.visit(ctx.expr(1))
        node = LessThanNode(left, right)
        node.set_line(ctx.LT().symbol.line)
        return node

    def visitLetIn(self, ctx: YAPLParser.LetInContext):
        declaration = [self.visit(ctx.declaration(0))]
        for i in range(1, len(ctx.declaration())):
            dec = self.visit(ctx.declaration(i))
            declaration.append(dec)
        expr = self.visit(ctx.expr())
        node = LetInNode(None, declaration, expr)
        node.set_line(ctx.LET().symbol.line)
        return node

    def visitMethod(self, ctx: YAPLParser.MethodContext):
        name = ctx.ID().getText()
        formal_params = [self.visit(ctx.formal(i)) for i in range(len(ctx.formal()))]
        type_return = ctx.TYPE().getText()
        expr = self.visit(ctx.expr())
        node = MethodNode(name, formal_params, type_return, expr)
        node.set_line(ctx.ID().symbol.line)
        return node

    def visitMinus(self, ctx: YAPLParser.MinusContext):
        left = self.visit(ctx.expr(0))
        right = self.visit(ctx.expr(1))
        node = MinusNode(left, right)
        node.set_line(ctx.MINUS().symbol.line)
        return node

    def visitNegation(self, ctx: YAPLParser.NegationContext):
        expr = self.visit(ctx.expr())
        node = BooleanNegation(expr)
        node.set_line(ctx.NOT().symbol.line)
        return node

    def visitNewObject(self, ctx: YAPLParser.NewObjectContext):
        node = NewObjectNode(ctx.TYPE().getText())
        node.set_line(ctx.NEW().symbol.line)
        return node

    def visitParenthesis(self, ctx: YAPLParser.ParenthesisContext):
        return self.visit(ctx.expr())

    def visitStar(self, ctx: YAPLParser.StarContext):
        left = self.visit(ctx.expr(0))
        right = self.visit(ctx.expr(1))
        node = StarNode(left, right)
        node.set_line(ctx.MULT().symbol.line)
        return node

    def visitStr(self, ctx: YAPLParser.StrContext):
        node = StringNode(ctx.STR().getText())
        node.set_line(ctx.STR().symbol.line)
        return node

    def visitTrue(self, ctx: YAPLParser.TrueContext):
        node = BooleanNode(ctx.TRUE())
        node.set_line(ctx.TRUE().symbol.line)
        return node

    def visitWhile(self, ctx: YAPLParser.WhileContext):
        predicate = self.visit(ctx.expr(0))
        expr = self.visit(ctx.expr(1))
        node = WhileNode(predicate, expr)
        node.set_line(ctx.WHILE().symbol.line)
        return node

    def visitNegInteger(self, ctx: YAPLParser.NegIntegerContext):
        node = IntegerNegation(self.visit(ctx.expr()))
        # node.set_line(ctx.???().symbol.line)
        return node

    def visitEnd(self, ctx: YAPLParser.EndContext):
        node = ProgramNode([])
        node.set_line(ctx.EOF().symbol.line)
        return node
