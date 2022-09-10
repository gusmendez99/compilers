import settings
from dataclasses import dataclass

from yapl.models.context import Context
from yapl.models.types import Type, ContextType
from yapl.utils import CheckError

"""
 Base node
"""

ELEMENTAL_TYPES = ["Int", "String", "Bool"]
IO_TYPES = ["IO"]


class Node:
    """
    AST base node
    """

    def __init__(self):
        self.context_type = ContextType()
        self.return_type = Type("Untype")
        self.dynamic_type = Type("Untype")
        self.inner_context = None
        self.line = -1
        self.validation_error = None

    def set_line(self, line=-1):
        self.line = line

    def validate(self, context: Context) -> bool:
        """
        Validates AST, semantically correct
        :param context: Context to validate
        :return:
        """
        pass


"""
 YAPL nodes
"""


class ProgramNode(Node):
    def __init__(self, class_list):
        super(Node, self).__init__()
        self.class_list = class_list
        self.context = Context()
        self.context_map = {}
        self.initialize_context()
        self.initialize_builtin_types()

    def initialize_context(self):
        # Declaring the methods of Object
        self.context.functions["abort"] = []
        self.context.functions["type_name"] = []
        self.context.functions["copy"] = []

    def initialize_builtin_types(self):
        # Declare io
        io_context = self.context.create_child_context()
        io_context.functions["in_string"] = []
        io_context.functions["in_int"] = []
        io_context.functions["out_string"] = ["x"]
        io_context.functions["out_int"] = ["x"]
        self.context_map["IO"] = io_context

        int_context = self.context.create_child_context()
        self.context_map["Int"] = int_context

        string_context = self.context.create_child_context()
        self.context_map["String"] = string_context

        bool_context = self.context.create_child_context()
        self.context_map["Bool"] = bool_context

        object_context = self.context.create_child_context()
        self.context_map["Object"] = object_context

        self_type_context = self.context.create_child_context()
        self.context_map["SELF_TYPE"] = self_type_context

    def __repr__(self):
        s = "Program:\n"
        for c in self.class_list:
            s += str(c) + "\n"
        return s

    def validate(
        self, context_attributes_inheritance: ContextType, context: Context = None
    ):
        self.context_type = context_attributes_inheritance
        for statement in self.class_list:
            if statement.parent and statement.parent in ELEMENTAL_TYPES:
                if statement.parent == "Int":
                    # print('A class cannot inherit from Int')
                    settings.compile_errors.append(
                        CheckError(
                            text="A class cannot inherit from Int", line=self.line
                        )
                    )
                    return False
                if statement.parent == "String":
                    # print('A class cannot inherit from String')
                    settings.compile_errors.append(
                        CheckError(
                            text="A class cannot inherit from String", line=self.line
                        )
                    )
                    return False
                if statement.parent == "Bool":
                    # print('A class cannot inherit from Bool')
                    settings.compile_errors.append(
                        CheckError(
                            text="A class cannot inherit from Bool", line=self.line
                        )
                    )
                    return False

        for statement in self.class_list:
            if not statement.validate(self.context):
                return False
            self.context_map[statement.name] = self.context.children[
                len(self.context.children) - 1
            ]

        return True


class ClassNode(Node):
    def __init__(self, name, parent, features):
        super().__init__()
        self.name = name
        self.parent = parent
        self.features = features

    def __str__(self):
        return str(self.name)

    def validate(self, context) -> bool:
        self.inner_context = context.create_child_context()
        self.inner_context.define("self")
        for attr in self.context_type.types[self.name].attributes.keys():
            self.inner_context.define(attr)
        for feature in self.features:
            if not feature.validate(self.inner_context):
                return False
        return True


class FeatureNode(Node):
    def __init__(self):
        super().__init__()

    def validate(self, context: Context) -> bool:
        pass


class MethodNode(FeatureNode):
    def __init__(self, name, params, return_type, body):
        super().__init__()
        self.name = name
        self.params = params
        self.method_type = return_type
        self.body = body

    def validate(self, context: Context) -> bool:
        # New context inside method node
        self.inner_context = context.create_child_context()

        for param in self.params:
            self.inner_context.define(param.name)

        if not self.body.validate(self.inner_context):
            return False

        if not context.define(self.name, [param.name for param in self.params]):
            # print(f'There were multiple definitions of method: {self.name}')
            settings.compile_errors.append(
                CheckError(
                    text=f"There were multiple definitions of method: {self.name}",
                    line=self.line,
                )
            )
            return False

        return True


class AttributeNode(FeatureNode):
    def __init__(self, name, attr_type, init_expr):
        super(AttributeNode, self).__init__()
        self.name = name
        self.attr_type = attr_type
        self.init_expr = init_expr

    def validate(self, context: Context) -> bool:
        if self.init_expr and not self.init_expr.validate(context):
            return False
        if not context.define(self.name):
            # print(f'There were multiple definition of attribute: {self.name}')
            settings.compile_errors.append(
                CheckError(
                    text=f"There were multiple definition of attribute: {self.name}",
                    line=self.line,
                )
            )
            return False
        return True


class ParamNode(FeatureNode):
    def __init__(self, name, param_type):
        super(ParamNode, self).__init__()
        self.name = name
        self.param_type = param_type

    def validate(self, context: Context):
        return True


class ObjectNode(Node):
    def __init__(self, name):
        super(ObjectNode, self).__init__()
        self.name = name

    def __str__(self):
        return self.name

    def validate(self, context: Context):
        if not context.is_defined(self.name):
            # print(f'The object "{self.name}" is not defined in this scope')
            settings.compile_errors.append(
                CheckError(
                    text=f'The object "{self.name}" is not defined in this scope',
                    line=self.line,
                )
            )
            return False
        return True


class SelfNode(ObjectNode):
    def __init__(self):
        super(SelfNode, self).__init__("SELF")


class ExpressionNode(Node):
    def __init__(self):
        super(ExpressionNode, self).__init__()

    @property
    def get_type(self):
        pass


class NewObjectNode(ExpressionNode):
    def __init__(self, new_type):
        super(NewObjectNode, self).__init__()
        self.type_new_object = new_type

    def validate(self, context: Context):
        return True


class CaseNode(ExpressionNode):
    def __init__(self, expr, actions):
        super(CaseNode, self).__init__()
        self.expr = expr
        self.actions = actions

    def validate(self, context: Context):
        if not self.expr.validate(context):
            return False

        for action in self.actions:
            if not action.validate(context):
                return False
        return True


class ActionNode(Node):
    def __init__(self, name, action_type, body):
        super(ActionNode, self).__init__()
        self.name = name
        self.action_type = action_type
        self.body = body
        self.inner_context = None

    def validate(self, context: Context):
        self.inner_context = context.create_child_context()
        self.inner_context.define(self.name)
        return self.body.validate(self.inner_context)


class IsVoidNode(ExpressionNode):
    def __init__(self, expr: ExpressionNode):
        super(IsVoidNode, self).__init__()
        self.expr = expr

    @property
    def get_type(self):
        return "Bool"

    def validate(self, context: Context):
        return self.expr.validate(context)


"""
 Operators
"""


class BinaryOperatorNode(ExpressionNode):
    def __init__(self, left: ExpressionNode, right: ExpressionNode):
        super(BinaryOperatorNode, self).__init__()
        self.left = left
        self.right = right

    @property
    def get_type(self):
        return self.left.get_type

    def validate(self, context: Context):
        return self.left.validate(context) and self.right.validate(context)


class UnaryOperator(ExpressionNode):
    def __init__(self, expr: ExpressionNode):
        super(UnaryOperator, self).__init__()
        self.expr = expr

    @property
    def get_type(self):
        return self.expr.get_type

    def validate(self, context: Context):
        return self.expr.validate(context)


class AtomicNode(ExpressionNode):
    def __init__(self):
        super(AtomicNode, self).__init__()


class PlusNode(BinaryOperatorNode):
    def __init__(self, left, right):
        super(PlusNode, self).__init__(left, right)
        self.left = left
        self.right = right
        self.operator = "+"


class MinusNode(BinaryOperatorNode):
    def __init__(self, left, right):
        super().__init__(left, right)
        self.left = left
        self.right = right
        self.operator = "-"


class StarNode(BinaryOperatorNode):
    def __init__(self, left, right):
        super(StarNode, self).__init__(left, right)
        self.left = left
        self.right = right
        self.operator = "*"


class DivNode(BinaryOperatorNode):
    def __init__(self, left, right):
        super(DivNode, self).__init__(left, right)
        self.left = left
        self.right = right
        self.operator = "/"


class EqualNode(BinaryOperatorNode):
    def __init__(self, left, right):
        super(EqualNode, self).__init__(left, right)
        self.left = left
        self.right = right
        self.operator = "="


class LessThanNode(BinaryOperatorNode):
    def __init__(self, left, right):
        super(LessThanNode, self).__init__(left, right)
        self.left = left
        self.right = right
        self.operator = "<"


class LessEqualNode(BinaryOperatorNode):
    def __init__(self, left, right):
        super(LessEqualNode, self).__init__(left, right)
        self.left = left
        self.right = right
        self.operator = "<="


class NegationNode(UnaryOperator):
    def __init__(self, value):
        super(NegationNode, self).__init__(value)
        self.value = value


class BooleanNegation(NegationNode):
    def __init__(self, value):
        super(BooleanNegation, self).__init__(value)
        self.operator = "!"


class IntegerNegation(NegationNode):
    def __init__(self, value):
        super(IntegerNegation, self).__init__(value)
        self.operator = "~"


class LetInNode(AtomicNode):
    def __init__(self, return_type, declaration_list, expr):
        super(LetInNode, self).__init__()
        # self.instance = instance
        self.return_type = return_type
        self.declaration_list = declaration_list
        self.expr = expr

    def get_type(self):
        return self.expr.get_type

    def validate(self, context: Context):
        self.inner_context = context.create_child_context()
        for declaration in self.declaration_list:
            if not declaration.validate(self.inner_context):
                return False
        return self.expr.validate(self.inner_context)


class DeclarationNode(ExpressionNode):
    def __init__(self, idx_token, type_token, expr=None):
        super(ExpressionNode, self).__init__()
        self.idx_token = idx_token
        self.type_token = type_token
        self.expr = expr
        self.variable_info = None

    def get_type(self):
        return self.type_token

    def validate(self, context: Context):
        if self.expr is not None and not self.expr.validate(context):
            return False
        if not context.define(self.idx_token):
            # print(f'There were multiple declaration of var with id: {self.idx_token}')
            settings.compile_errors.append(
                CheckError(
                    text=f"There were multiple declaration of var with id: {self.idx_token}",
                    line=self.line,
                )
            )
            return False
        return True


class IfNode(ExpressionNode):
    def __init__(self, predicate, then_expr, else_expr):
        super(IfNode, self).__init__()
        self.predicate = predicate
        self.then_expr = then_expr
        self.else_expr = else_expr

    def get_type(self):
        return self.then_expr

    def validate(self, context: Context):
        if not self.predicate.validate(context):
            return False
        if not self.then_expr.validate(context):
            return False
        if not self.else_expr.validate(context):
            return False
        return True


class WhileNode(ExpressionNode):
    def __init__(self, predicate, expr):
        super(WhileNode, self).__init__()
        self.predicate = predicate
        self.expr = expr

    def get_type(self):
        return self.expr.get_type

    def validate(self, context: Context):
        if not self.predicate.validate(context):
            return False
        if not self.expr.validate(context):
            return False
        return True


class BlockNode(AtomicNode):
    def __init__(self, expr_list):
        super(BlockNode, self).__init__()
        self.expr_list = expr_list

    def validate(self, context: Context):
        # Validate all expressions inside code block
        for expresion in self.expr_list:
            if not expresion.validate(context):
                return False
        return True


class AssignNode(AtomicNode):
    def __init__(self, idx_token, expr):
        super(AssignNode, self).__init__()
        self.idx_token = idx_token
        self.expr = expr
        self.variable_info = None

    def validate(self, context: Context):
        if not self.expr.validate(context):
            return False
        if not context.is_defined(self.idx_token):
            # print(f'Var with id "{self.idx_token}" is not defined')
            settings.compile_errors.append(
                CheckError(
                    text=f'Var with id "{self.idx_token}" is not defined',
                    line=self.line,
                )
            )
            return False
        return True


class DynamicDispatchNode(ExpressionNode):
    def __init__(self, instance, method, arguments):
        super(DynamicDispatchNode, self).__init__()
        self.instance = instance
        self.method = method
        self.arguments = arguments

    def validate(self, context: Context):
        if type(self.instance) != str and not self.instance.validate(context):
            return False
        for expresion in self.arguments:
            if not expresion.validate(context):
                return False
        return True


class StaticDispatchNode(ExpressionNode):
    def __init__(self, instance, dispatch_type, method, arguments):
        super(StaticDispatchNode, self).__init__()
        self.instance = instance
        self.dispatch_type = dispatch_type
        self.method = method
        self.arguments = arguments

    def validate(self, context: Context):
        if not self.instance.validate(context):
            return False
        for expresion in self.arguments:
            if not expresion.validate(context):
                return False
        return True


class IntegerNode(AtomicNode):
    def __init__(self, integer_token):
        super(IntegerNode, self).__init__()
        self.integer_token = integer_token

    def validate(self, context: Context) -> bool:
        return True


class BooleanNode(AtomicNode):
    def __init__(self, boolean_token):
        super(BooleanNode, self).__init__()
        self.boolean_token = boolean_token

    def validate(self, context: Context) -> bool:
        return True


class StringNode(AtomicNode):
    def __init__(self, string_token):
        super(StringNode, self).__init__()
        self.string_token = string_token

    def validate(self, context: Context) -> bool:
        return True


class VariableNode(AtomicNode):
    def __init__(self, idx_token):
        super(VariableNode, self).__init__()
        self.idx_token = idx_token
        self.variable_info = None

    def validate(self, context: Context):
        return context.is_defined(self.idx_token)


class PrintIntegerNode(AtomicNode):
    def __init__(self, expr):
        super(PrintIntegerNode, self).__init__()
        self.expr = expr

    def validate(self, context: Context) -> bool:
        return True


class PrintStringNode(AtomicNode):
    def __init__(self, string_token):
        super(PrintStringNode, self).__init__()
        self.string_token = string_token

    def validate(self, context: Context) -> bool:
        return True


class ScanNode(AtomicNode):
    def __init__(self, method):
        self.method = method
        super(ScanNode, self).__init__()

    def validate(self, context: Context) -> bool:
        return True


""" TAC Node """


class QuadrupleItemNode:
    def __init__(self, address=None, code=None, next=None, true=None, false=None):
        self.address: AddressNode = address
        self.code: list = code or []
        self.next = next
        self.true = true
        self.false = false

    def safe_values(self, address=None, code=None, next=None, true=None, false=None):
        self.address = address or self.address
        self.code = code or self.code
        self.next = next or self.next
        self.true = true or self.true
        self.false = false or self.false

        return self

    def __str__(self) -> str:
        return "{}".format(
            ""
            if len(self.code) == 0
            else "{}".format(
                "\n".join("{}".format(quadruple) for quadruple in self.code)
            )
        )


@dataclass
class QuadrupleNode:
    op: str
    arg_1: str
    arg_2: str = None
    res: str = None

    def __str__(self) -> str:
        if not self.res:
            if self.op == "if":
                return "{} {} {}".format(self.op, self.arg_1, self.arg_2)
            elif self.arg_2:
                return "{} {} {}".format(self.arg_1, self.op, self.arg_2)
            else:
                return "{} {}".format(self.op, self.arg_1)
        if self.arg_2:
            return "{} = {} {} {}".format(self.res, self.arg_1, self.op, self.arg_2)
        if self.op == "=":
            return "{} {} {}".format(self.res, self.op, self.arg_1)
        return "{} = {} {}".format(self.res, self.op, self.arg_1)
