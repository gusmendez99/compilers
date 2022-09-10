import settings
from yapl.models.nodes import *
from yapl.models.types import *
import yapl.visitors.decorator as visitor
from yapl.utils import CheckError

from yapl.grammar.YAPLParser import YAPLParser
from yapl.grammar.YAPL2Parser import YAPLParser as YAPL2Parser
from yapl.grammar.YAPLVisitor import YAPLVisitor
from yapl.grammar.YAPL2Visitor import YAPLVisitor as YAPL2Visitor


class TypeCheckVisitor:
    @visitor.on("node")
    def visit(self, node: Node, context: ContextType, errors: list):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node: ProgramNode, context: ContextType, errors: list):
        for _class in node.class_list:
            if not self.visit(_class, context, errors):
                return False
        return True

    @visitor.when(ClassNode)
    def visit(self, node: ClassNode, context: ContextType, errors: list):
        current_type = context.get_type(node.name)
        inner_context = context.create_child_context()
        for attr in current_type.attributes.values():
            attr: Attribute
            inner_context.define_symbol(
                attr.name, context.get_type(attr.attribute_type)
            )
        node.context_type = inner_context
        for feature in node.features:
            if not self.visit(feature, inner_context, errors, current_type):
                return False
        return True

    @visitor.when(FeatureNode)
    def visit(self, node: FeatureNode, context: ContextType, errors):
        pass

    @visitor.when(MethodNode)
    def visit(
        self, node: MethodNode, context: ContextType, errors: list, current_type: Type
    ):
        inner_context = context.create_child_context()
        inner_context.define_symbol("self", current_type)
        for param in node.params:
            if not self.visit(param, context, errors, current_type):
                return False
            if param.return_type == "SELF_TYPE":
                param.return_type = current_type.name
            inner_context.define_symbol(param.name, context.get_type(param.return_type))
        if not self.visit(node.body, inner_context, errors, current_type):
            return False
        node.context_type = inner_context
        node.return_type = node.method_type
        if node.return_type == "SELF_TYPE":
            node.return_type = current_type.name

        node.dynamic_type = node.body.return_type
        if not context.heir(
            context.get_type(node.body.return_type), context.get_type(node.return_type)
        ):
            # print("Return type of method " + node.name + " must be " + node.return_type + ", not " + node.body.return_type)
            settings.compile_errors.append(
                CheckError(
                    text="Return type of method "
                    + node.name
                    + " must be "
                    + node.return_type
                    + ", not "
                    + node.body.return_type,
                    line=node.line,
                )
            )
            return False
        return True

    @visitor.when(AttributeNode)
    def visit(
        self,
        node: AttributeNode,
        context: ContextType,
        errors: list,
        current_type: Type,
    ):
        node.current_type = node.attr_type
        node.dynamic_type = node.attr_type
        if node.init_expr:
            inner_context = context.create_child_context()
            inner_context.define_symbol("self", current_type)
            if not self.visit(node.init_expr, inner_context, errors, current_type):
                return False
            node.dynamic_type = node.init_expr.return_type
            context.define_symbol(node.name, context.get_type(node.attr_type))
            if not context.heir(
                context.get_type(node.init_expr.return_type),
                context.get_type(node.attr_type),
            ):
                # print("Return type of init expression must be " + node.attr_type + ", not " + node.init_expr.return_type)
                settings.compile_errors.append(
                    CheckError(
                        text="Return type of init expression must be "
                        + node.attr_type
                        + ", not "
                        + node.init_expr.return_type,
                        line=node.line,
                    )
                )
                return False
            return True
        context.define_symbol(node.name, context.get_type(node.attr_type))
        return True

    @visitor.when(ParamNode)
    def visit(
        self, node: ParamNode, context: ContextType, errors: list, current_type: Type
    ):
        node.return_type = node.param_type
        return True

    @visitor.when(ObjectNode)
    def visit(
        self, node: ObjectNode, context: ContextType, errors: list, current_type: Type
    ):
        if not context.get_type_for(node.name):
            settings.compile_errors.append(
                CheckError(text=f"Type undefined for '{node.name}'", line=node.line)
            )
            return False

        node.return_type = context.get_type_for(node.name).name
        node.dynamic_type = context.get_type_for(node.name).name
        return True

    @visitor.when(ExpressionNode)
    def visit(
        self,
        node: ExpressionNode,
        context: ContextType,
        errors: list,
        current_type: Type,
    ):
        pass

    @visitor.when(NewObjectNode)
    def visit(
        self,
        node: NewObjectNode,
        context: ContextType,
        errors: list,
        current_type: Type,
    ):
        if node.type_new_object == "SELF_TYPE":
            node.return_type = current_type.name
            node.dynamic_type = current_type.name
        else:
            node.return_type = node.type_new_object
            node.dynamic_type = node.type_new_object
        return True

    @visitor.when(CaseNode)
    def visit(self, node: CaseNode, context: ContextType, errors, current_type: Type):
        if not self.visit(node.expr, context, errors, current_type):
            return False
        t0 = node.expr.dynamic_type
        for action in node.actions:
            inner_context = context.create_child_context()
            if not self.visit(action, inner_context, errors, current_type):
                return False
        types_ancestors = []
        for actions in node.actions:
            types_ancestors.append(
                context.parents_of_type(context.get_type(actions.return_type))
            )
        for t in types_ancestors[0]:
            contained = True
            for ty in types_ancestors:
                contained &= t in ty
            if contained:
                node.return_type = t
                node.dynamic_type = t
                break
        return True

    @visitor.when(ActionNode)
    def visit(self, node: ActionNode, context: ContextType, errors, current_type: Type):
        context.define_symbol(node.name, context.get_type(node.action_type))
        if not self.visit(node.body, context, errors, current_type):
            return False
        node.return_type = node.body.return_type
        node.dynamic_type = node.body.dynamic_type
        return True

    @visitor.when(IsVoidNode)
    def visit(self, node: IsVoidNode, context: ContextType, errors, current_type: Type):
        node.return_type = "Bool"
        if not self.visit(node.expr, context, errors, current_type):
            return False
        if node.expr.return_type in ["Int", "Bool", "String"]:
            # print("Invalid use of function isvoid, type is " + node.expr.current_type)
            settings.compile_errors.append(
                CheckError(
                    text="Invalid use of function isvoid, type is "
                    + node.expr.current_type,
                    line=node.line,
                )
            )
            return False
        return True

    @visitor.when(BinaryOperatorNode)
    def visit(
        self, node: BinaryOperatorNode, context: ContextType, errors, current_type: Type
    ):
        if not self.visit(node.left, context, errors, current_type):
            return False
        if not self.visit(node.right, context, errors, current_type):
            return False
        if node.left.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Left expression must be Int", line=node.line)
            )
            return False
        if node.right.return_type != "Int":
            # print("Right expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Right expression must be Int", line=node.line)
            )
            return False
        node.return_type = "Int"
        return True

    @visitor.when(UnaryOperator)
    def visit(self, node: UnaryOperator, context: ContextType):
        pass

    @visitor.when(AtomicNode)
    def visit(self, node: AtomicNode, context: ContextType):
        pass

    @visitor.when(PlusNode)
    def visit(self, node: PlusNode, context: ContextType, errors, current_type: Type):
        if not self.visit(node.left, context, errors, current_type):
            return False
        if not self.visit(node.right, context, errors, current_type):
            return False
        if node.left.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Left expression must be Int", line=node.line)
            )
            return False
        if node.right.return_type != "Int":
            # print("Right expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Right expression must be Int", line=node.line)
            )
            return False
        node.return_type = "Int"
        node.dynamic_type = "Int"
        return True

    @visitor.when(MinusNode)
    def visit(self, node: MinusNode, context: ContextType, errors, current_type: Type):
        if not self.visit(node.left, context, errors, current_type):
            return False
        if not self.visit(node.right, context, errors, current_type):
            return False
        if node.left.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Left expression must be Int", line=node.line)
            )
            return False
        if node.right.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Right expression must be Int", line=node.line)
            )
            return False
        node.return_type = "Int"
        node.dynamic_type = "Int"
        return True

    @visitor.when(StarNode)
    def visit(self, node: StarNode, context: ContextType, errors, current_type: Type):
        if not self.visit(node.left, context, errors, current_type):
            return False
        if not self.visit(node.right, context, errors, current_type):
            return False
        if node.left.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Left expression must be Int", line=node.line)
            )
            return False
        if node.right.return_type != "Int":
            # print("Right expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Right expression must be Int", line=node.line)
            )
            return False
        node.return_type = "Int"
        node.dynamic_type = "Int"
        return True

    @visitor.when(DivNode)
    def visit(self, node: DivNode, context: ContextType, errors, current_type: Type):
        if not self.visit(node.left, context, errors, current_type):
            return False
        if not self.visit(node.right, context, errors, current_type):
            return False
        if node.left.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Left expression must be Int", line=node.line)
            )
            return False
        if node.right.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Right expression must be Int", line=node.line)
            )
            return False
        node.return_type = "Int"
        node.dynamic_type = "Int"
        return True

    @visitor.when(EqualNode)
    def visit(self, node: EqualNode, context: ContextType, errors, current_type: Type):
        if not self.visit(node.left, context, errors, current_type):
            return False
        if not self.visit(node.right, context, errors, current_type):
            return False
        if node.left.return_type in ["Int", "Bool", "String"]:
            if node.left.return_type != node.right.return_type:
                # print("Incorrect comparison")
                settings.compile_errors.append(
                    CheckError(text="Incorrect comparison", line=node.line)
                )
                return False
            else:
                node.return_type = "Bool"
                node.dynamic_type = "Bool"
                return True
        if node.right.return_type in ["Int", "Bool", "String"]:
            # print("Incorrect comparison")
            settings.compile_errors.append(
                CheckError(text="Incorrect comparison", line=node.line)
            )
            return False
        node.return_type = "Bool"
        node.dynamic_type = "Bool"
        return True

    @visitor.when(LessThanNode)
    def visit(
        self, node: LessThanNode, context: ContextType, errors, current_type: Type
    ):
        if not self.visit(node.left, context, errors, current_type):
            return False
        if not self.visit(node.right, context, errors, current_type):
            return False
        if node.left.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Left expression must be Int", line=node.line)
            )
            return False
        if node.right.return_type != "Int":
            # print("Right expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Right expression must be Int", line=node.line)
            )
            return False
        node.return_type = "Bool"
        node.dynamic_type = "Bool"
        return True

    @visitor.when(LessEqualNode)
    def visit(
        self, node: LessEqualNode, context: ContextType, errors, current_type: Type
    ):
        if not self.visit(node.left, context, errors, current_type):
            return False
        if not self.visit(node.right, context, errors, current_type):
            return False
        if node.left.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Left expression must be Int", line=node.line)
            )
            return False
        if node.right.return_type != "Int":
            # print("Left expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Right expression must be Int", line=node.line)
            )
            return False
        node.return_type = "Bool"
        node.dynamic_type = "Bool"
        return True

    @visitor.when(NegationNode)
    def visit(
        self, node: NegationNode, context: ContextType, errors, current_type: Type
    ):
        pass

    @visitor.when(BooleanNegation)
    def visit(
        self, node: BooleanNegation, context: ContextType, errors, current_type: Type
    ):
        if not self.visit(node.expr, context, errors, current_type):
            return False
        if node.expr.return_type != "Bool":
            # print("Expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Expression must be Int", line=node.line)
            )
            return False
        node.return_type = "Bool"
        node.dynamic_type = "Bool"
        return True

    @visitor.when(IntegerNegation)
    def visit(
        self, node: IntegerNegation, context: ContextType, errors, current_type: Type
    ):
        if not self.visit(node.expr, context, errors, current_type):
            return False
        if node.expr.return_type != "Int":
            # print("Expression must be Int")
            settings.compile_errors.append(
                CheckError(text="Expression must be Int", line=node.line)
            )
            return False
        node.return_type = "Int"
        node.dynamic_type = "Int"
        return True

    @visitor.when(LetInNode)
    def visit(
        self, node: LetInNode, context: ContextType, errors: list, current_type: Type
    ):
        inner_context = context.create_child_context()

        for declaration_node in node.declaration_list:

            declaration_node: asttt.DeclarationNode
            if not self.visit(declaration_node, context, errors, current_type):
                return False

            declaration_node_type = (
                current_type
                if declaration_node.type_token == "SELF_TYPE"
                else context.get_type(declaration_node.type_token)
            )

            if declaration_node.expr:
                if not self.visit(declaration_node.expr, context, errors, current_type):
                    return False
                expr_type = context.get_type(declaration_node.expr.return_type)
                if not context.heir(expr_type, declaration_node_type):
                    # print('The type of the expression must inherit from the declaration type')
                    settings.compile_errors.append(
                        CheckError(
                            text="The type of the expression must inherit from the declaration type",
                            line=node.line,
                        )
                    )
                    return False

            # inner_context.symbols[declaration_node.idx_token] = declaration_node_type
            inner_context.define_symbol(
                declaration_node.idx_token, declaration_node_type
            )

        node.context_type = inner_context
        if not self.visit(node.expr, inner_context, errors, current_type):
            return False

        node.return_type = node.expr.return_type
        node.dynamic_type = node.expr.dynamic_type
        return True

    @visitor.when(DeclarationNode)
    def visit(
        self, node: DeclarationNode, context: ContextType, errors, current_type: Type
    ):
        node.current_type = node.type_token
        node.dynamic_type = node.type_token
        if node.expr is not None:
            inner_context = context.create_child_context()
            inner_context.define_symbol("self", current_type)
            if not self.visit(node.expr, inner_context, errors, current_type):
                return False
            node.dynamic_type = node.expr.return_type
            if not context.heir(
                context.get_type(node.expr.return_type),
                context.get_type(node.type_token),
            ):
                # print("Return type of init expression must be " + node.expr + ", not " + node.expr.return_type)
                settings.compile_errors.append(
                    CheckError(
                        text="Return type of init expression must be "
                        + node.expr
                        + ", not "
                        + node.expr.return_type,
                        line=node.line,
                    )
                )
                return False
            return True
        return True

    @visitor.when(IfNode)
    def visit(self, node: IfNode, context: ContextType, errors, current_type: Type):
        if not self.visit(node.predicate, context, errors, current_type):
            return False
        if not self.visit(node.then_expr, context, errors, current_type):
            return False
        if not self.visit(node.else_expr, context, errors, current_type):
            return False
        if node.predicate.return_type != "Bool":
            # print("Type of predicate must be Bool, not " + node.predicate.return_type)
            settings.compile_errors.append(
                CheckError(
                    text="Type of predicate must be Bool, not "
                    + node.predicate.return_type,
                    line=node.line,
                )
            )
            return False

        sthen = context.parents_of_type(context.get_type(node.then_expr.return_type))
        dthen = context.parents_of_type(context.get_type(node.then_expr.dynamic_type))
        selse = context.parents_of_type(context.get_type(node.else_expr.return_type))
        delse = context.parents_of_type(context.get_type(node.else_expr.dynamic_type))
        for t in sthen:
            if t in selse:
                node.return_type = t
                break
        for t in dthen:
            if t in delse:
                node.dynamic_type = t
                break
        return True

    @visitor.when(WhileNode)
    def visit(self, node: WhileNode, context: ContextType, errors, current_type: Type):
        if not self.visit(node.predicate, context, errors, current_type):
            return False
        if not self.visit(node.expr, context, errors, current_type):
            return False
        if node.predicate.return_type != "Bool":
            # print("Predicate type must be Bool, not " + node.predicate.return_type)
            settings.compile_errors.append(
                CheckError(
                    text="Predicate type must be Bool, not "
                    + node.predicate.return_type,
                    line=node.line,
                )
            )
            return False
        node.return_type = "Object"
        node.dynamic_type = "Object"
        return True

    @visitor.when(BlockNode)
    def visit(self, node: BlockNode, context: ContextType, errors, current_type: Type):
        for expr in node.expr_list:
            if not self.visit(expr, context, errors, current_type):
                return False
        node.dynamic_type = node.expr_list[len(node.expr_list) - 1].dynamic_type
        node.return_type = node.expr_list[len(node.expr_list) - 1].return_type
        return True

    @visitor.when(AssignNode)
    def visit(self, node: AssignNode, context: ContextType, errors, current_type: Type):
        t = context.get_type_for(node.idx_token)
        if not t:
            settings.compile_errors.append(
                CheckError(
                    text=f"Type undefined for '{node.idx_token}'", line=node.line
                )
            )
            return False

        if not self.visit(node.expr, context, errors, current_type):
            return False
        if not context.heir(context.get_type(node.expr.return_type), t):
            # print("Type of expression must be " + t.name + ", not " + node.expr.return_type)
            settings.compile_errors.append(
                CheckError(
                    text="Type of expression must be "
                    + t.name
                    + ", not "
                    + node.expr.return_type,
                    line=node.line,
                )
            )
            return False
        node.return_type = node.expr.return_type
        node.dynamic_type = node.expr.dynamic_type
        return True

    @visitor.when(DynamicDispatchNode)
    def visit(
        self,
        node: DynamicDispatchNode,
        context: ContextType,
        errors,
        current_type: Type,
    ):
        if type(node.instance) == str:
            t0 = context.get_type_for(node.instance)
            if not t0:
                settings.compile_errors.append(
                    CheckError(
                        text=f"Type undefined for '{node.instance}'", line=node.line
                    )
                )
            t0 = t0.name

        else:
            if not self.visit(node.instance, context, errors, current_type):
                return False
            t0 = node.instance.return_type
        for exp in node.arguments:
            if not self.visit(exp, context, errors, current_type):
                return False
        if node.method not in context.get_type(t0).methods:
            # print("Method " + node.method + " not defined in type " + t0)
            settings.compile_errors.append(
                CheckError(
                    text="Method " + node.method + " not defined in type " + t0,
                    line=node.line,
                )
            )
            return False
        method = context.get_type(t0).methods[node.method]
        for i in range(len(method.arguments)):
            if not context.heir(
                context.get_type(node.arguments[i].return_type),
                context.get_type(method.arguments[i].attribute_type),
            ):
                # print("Param " + str(i) + " type must be " + node.arguments[i].return_type + ", not " + method.arguments[i].attribute_type)
                settings.compile_errors.append(
                    CheckError(
                        text="Param "
                        + str(i)
                        + " type must be "
                        + node.arguments[i].return_type
                        + ", not "
                        + method.arguments[i].attribute_type,
                        line=node.line,
                    )
                )
                return False
        node.return_type = method.return_type
        node.dynamic_type = method.return_type
        if node.return_type == "SELF_TYPE":
            node.return_type = t0
            node.dynamic_type = t0
        return True

    @visitor.when(StaticDispatchNode)
    def visit(
        self,
        node: StaticDispatchNode,
        context: ContextType,
        errors,
        current_type: ContextType,
    ):
        if not self.visit(node.instance, context, errors, current_type):
            return False
        type_of_instance_name = node.instance.return_type
        type_of_instance = context.get_type(type_of_instance_name)
        dispatch_type = context.get_type(node.dispatch_type)

        if not dispatch_type:
            settings.compile_errors.append(
                CheckError(
                    text=f"Type undefined for dispatch action '{node.dispatch_type}'",
                    line=node.line,
                )
            )
            return False

        for expr_node in node.arguments:
            if not self.visit(expr_node, context, errors, current_type):
                return False

        arguments_types = [
            context.get_type(expr_node.return_type) for expr_node in node.arguments
        ]

        if not context.heir(type_of_instance, dispatch_type):
            # print('The type of the instance must inherit from static declared')
            settings.compile_errors.append(
                CheckError(
                    text="The type of the instance must inherit from static declared",
                    line=node.line,
                )
            )
            ans = False

        # dispatch_arguments_types = [method for method in dispatch_type.methods.values()]
        if node.method not in dispatch_type.methods:
            # print('The specified type has not a method called ' + node.method)
            settings.compile_errors.append(
                CheckError(
                    text="The specified type has not a method called " + node.method,
                    line=node.line,
                )
            )
            ans = False

        dispatch_method: Method = dispatch_type.methods[node.method]
        dispatch_method_args_types = [
            context.get_type(arg.attribute_type) for arg in dispatch_method.arguments
        ]

        for i in range(len(dispatch_method_args_types)):
            if not context.heir(arguments_types[i], dispatch_method_args_types[i]):
                # print('The argument ' + str(i) + ' do not inherit from the type of the argument ' + str(i) + 'of the static type')
                settings.compile_errors.append(
                    CheckError(
                        text="The argument "
                        + str(i)
                        + " do not inherit from the type of the argument "
                        + str(i)
                        + "of the static type",
                        line=node.line,
                    )
                )
                return False

        return_type_of_dispatch_method = dispatch_method.return_type

        node.return_type = (
            type_of_instance.name
            if return_type_of_dispatch_method == "SELF_TYPE"
            else return_type_of_dispatch_method
        )
        node.dynamic_type = node.return_type
        return True

    @visitor.when(IntegerNode)
    def visit(
        self, node: IntegerNode, context: ContextType, errors, current_type: Type
    ):
        node.return_type = "Int"
        node.dynamic_type = "Int"
        return True

    @visitor.when(BooleanNode)
    def visit(
        self, node: BooleanNode, context: ContextType, errors, current_type: Type
    ):
        node.return_type = "Bool"
        node.dynamic_type = "Bool"
        return True

    @visitor.when(StringNode)
    def visit(self, node: StringNode, context: ContextType, errors, current_type: Type):
        node.return_type = "String"
        node.dynamic_type = "String"
        return True

    @visitor.when(PrintIntegerNode)
    def visit(
        self, node: PrintIntegerNode, context: ContextType, errors, current_type: Type
    ):
        if not self.visit(node.expr, context, errors, current_type):
            return False
        node.return_type = current_type.name
        node.dynamic_type = node.return_type
        if node.expr.return_type != "Int":
            # print('The expression to print must be Int')
            settings.compile_errors.append(
                CheckError(text="The expression to print must be Int", line=node.line)
            )
            return False
        return True

    @visitor.when(PrintStringNode)
    def visit(
        self, node: PrintStringNode, context: ContextType, errors, current_type: Type
    ):
        if not self.visit(node.string_token, context, errors, current_type):
            return False
        node.return_type = current_type.name
        node.dynamic_type = node.return_type
        if node.string_token.return_type != "String":
            # print('The expression to print must be String')
            settings.compile_errors.append(
                CheckError(
                    text="The expression to print must be String", line=node.line
                )
            )
            return False
        return True

    @visitor.when(ScanNode)
    def visit(self, node: ScanNode, context: ContextType, errors, current_type: Type):
        node.return_type = "Int" if node.method == "in_int" else "String"
        node.dynamic_type = node.return_type
        return True


class TypesTableCheckVisitor(YAPL2Visitor):
    def __init__(self):
        super().__init__()
        self.types_table = TypesTable()
        self.errors = list()

    # Visit a parse tree produced by YAPL2Parser#program.
    def visitProgram(self, ctx: YAPL2Parser.ProgramContext):
        self.visitChildren(ctx)
        if self.types_table.get_class("Main"):
            mainMethod = self.types_table.find_class_method("Main", "main", "Main")
            if mainMethod:
                if len(mainMethod.parameters.keys()) > 0:
                    settings.compile_errors.append(
                        CheckError(
                            text="Method 'main' at class Main must have zero params",
                            line=ctx.start.line
                        )
                    )
            else:
                settings.compile_errors.append(
                    CheckError(
                        text="Method 'main' at class Main is not defined",
                        line=ctx.start.line
                    )
                )
        else:
            settings.compile_errors.append(
                CheckError(
                    text="Main class is not defined",
                    line=ctx.start.line
                )
            )
        return self.types_table, self.errors

    # Visit a parse tree produced by YAPL2Parser#class_exp.
    def visitClass_exp(self, ctx: YAPL2Parser.Class_expContext):
        id = str(ctx.TYPE()[0])
        if id in ["IO", "Int", "String", "Bool"]:
            settings.compile_errors.append(
                CheckError(
                    text="Class can't be redefined",
                    line=ctx.start.line
                )
            )
        if ctx.INHERITS():
            parent = str(ctx.TYPE()[1])
            if parent in ["Int", "String", "Bool"]:
                settings.compile_errors.append(
                    CheckError(
                        text=f"Class can't inherit from {parent}",
                        line=ctx.start.line
                    )
                )
            settings.compile_errors.append(
                CheckError(
                    text=self.types_table.add_class(id, parent),
                    line=ctx.start.line
                )
            )
        else:
            settings.compile_errors.append(
                CheckError(
                    text=self.types_table.add_class(id),
                    line=ctx.start.line
                )
            )
        self.visitChildren(ctx)

    # Visit a parse tree produced by YAPL2Parser#attribute.
    def visitAttribute(self, ctx: YAPL2Parser.AttributeContext):
        self.visitChildren(ctx)

    # Visit a parse tree produced by YAPL2Parser#declaration.
    def visitDeclaration(self, ctx: YAPL2Parser.DeclarationContext):
        name = str(ctx.ID())
        _type = str(ctx.TYPE())
        settings.compile_errors.append(
            CheckError(
                text=self.types_table.get_class().add_attr(name, _type),
                line=ctx.start.line
            )
        )
        return self.visitChildren(ctx)

    # Visit a parse tree produced by YAPL2Parser#method.
    def visitMethod(self, ctx: YAPL2Parser.MethodContext):
        name = str(ctx.ID())
        _type = str(ctx.TYPE())
        settings.compile_errors.append(
            CheckError(
                text=self.types_table.get_class().add_method(name, _type),
                line=ctx.start.line
            )
        )
        self.visitChildren(ctx)

    # Visit a parse tree produced by YAPL2Parser#formal.
    def visitFormal(self, ctx: YAPL2Parser.FormalContext):
        name = str(ctx.ID())
        _type = str(ctx.TYPE())
        settings.compile_errors.append(
            CheckError(
                text=self.types_table.get_class().add_param(name, _type),
                line=ctx.start.line
            )
        )        
        self.visitChildren(ctx)
