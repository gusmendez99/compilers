class BaseNode:
    def __init__(self, context, symbol):
        self.context = context
        self.symbol = symbol

    @abstractmethod
    def visit(self, visitor):
        pass


# Pure grammar nodes
class ProgramNode(BaseNode):
    def __init__(self, context, classes):
        super().__init__(context, "program")
        self.classes = classes

    def visit(self, visitor):
        return visitor.visit(self)


class ExpressionNode(BaseNode):
    def __init__(self, context, symbol):
        super().__init__(context, symbol)