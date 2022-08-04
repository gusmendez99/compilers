from yapl.models.nodes import *
from yapl.models.types import *
import yapl.visitors.decorator as visitor


class TypeCheckVisitor:
    @visitor.on('node')
    def visit(self, node: Node, context: ContextType, errors: list):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node: ProgramNode, context: ContextType, errors: list):
        for classes in node.class_list:
            if not self.visit(classes, context, errors):
                return False
        return True

    @visitor.when(ClassNode)
    def visit(self, node: ClassNode, context: ContextType, errors: list):
        current_type = context.getType(node.name)
        inner_context = context.createChildContext()
        for attr in current_type.attributes.values():
            attr: Attribute
            inner_context.defineSymbol(attr.name, context.getType(attr.attribute_type))
        node.context_type = inner_context
        for feature in node.features:
            if not self.visit(feature, inner_context, errors, current_type):
                return False
        return True

    @visitor.when(FeatureNode)
    def visit(self, node: FeatureNode, context: ContextType, errors):
        pass

    @visitor.when(MethodNode)
    def visit(self, node: MethodNode, context: ContextType, errors: list, current_type: Type):
        inner_context = context.createChildContext()
        inner_context.defineSymbol("self", current_type)
        for param in node.params:
            if not self.visit(param, context, errors, current_type):
                return False
            if param.return_type == "SELF_TYPE":
                param.return_type = current_type.name
            inner_context.defineSymbol(param.name, context.getType(param.returnType))
        if not self.visit(node.body, inner_context, errors, current_type):
            return False
        node.context_type = inner_context
        node.return_type = node.method_type
        if node.return_type == "SELF_TYPE":
            node.return_type = current_type.name
        
        # TODO: SELF_TYPE check here? Maybe
        node.dynamic_type = node.body.return_type
        if not context.heir(context.getType(node.body.return_type), context.getType(node.return_type)):
            print("Return type of method " + node.name + " must be " + node.return_type + ", not " + node.body.return_type)
            return False
        return True

    @visitor.when(AttributeNode)
    def visit(self, node: AttributeNode, context: ContextType, errors: list, current_type: Type):
        node.current_type = node.attr_type
        node.dynamic_type = node.attr_type
        if node.init_expr:
            inner_context = context.createChildContext()
            inner_context.defineSymbol("self", current_type)
            if not self.visit(node.init_expr, inner_context, errors, current_type):
                return False
            node.dynamic_type = node.init_expr.return_type
            context.defineSymbol(node.name, context.getType(node.attr_type))
            if not context.heir(context.getType(node.init_expr.return_type), context.getType(node.attr_type)):
                print("Return type of init expression must be " + node.attr_type + ", not " + node.init_expr.return_type)
                return False
            return True
        context.defineSymbol(node.name, context.getType(node.attr_type))
        return True

    @visitor.when(ParamNode)
    def visit(self, node: ParamNode, context: ContextType, errors: list, current_type: Type):
        node.returnType = node.param_type
        return True

    @visitor.when(ObjectNode)
    def visit(self, node: ObjectNode, context: ContextType, errors: list, current_type: Type):
        node.return_type = context.getTypeFor(node.name).name
        node.dynamic_type = context.getTypeFor(node.name).name
        return True

    @visitor.when(ExpressionNode)
    def visit(self, node: ExpressionNode, context: ContextType, errors: list, current_type: Type):
        pass

    @visitor.when(NewObjectNode)
    def visit(self, node: NewObjectNode, context: ContextType, errors: list, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(CaseNode)
    def visit(self, node: CaseNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(ActionNode)
    def visit(self, node: ActionNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(IsVoidNode)
    def visit(self, node: IsVoidNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(BinaryOperatorNode)
    def visit(self, node: BinaryOperatorNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(UnaryOperator)
    def visit(self, node: UnaryOperator, context: ContextType):
        pass

    @visitor.when(AtomicNode)
    def visit(self, node: AtomicNode, context: ContextType):
        pass

    @visitor.when(PlusNode)
    def visit(self, node: PlusNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(MinusNode)
    def visit(self, node: MinusNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(StarNode)
    def visit(self, node: StarNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(DivNode)
    def visit(self, node: DivNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(EqualNode)
    def visit(self, node: EqualNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(LessThanNode)
    def visit(self, node: LessThanNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(LessEqualNode)
    def visit(self, node: LessEqualNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(NegationNode)
    def visit(self, node: NegationNode, context: ContextType, errors, current_type: Type):
        pass

    @visitor.when(BooleanNegation)
    def visit(self, node: BooleanNegation, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(IntegerNegation)
    def visit(self, node: IntegerNegation, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(LetInNode)
    def visit(self, node: LetInNode, context: ContextType, errors: list, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(DeclarationNode)
    def visit(self, node: DeclarationNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(IfNode)
    def visit(self, node: IfNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(WhileNode)
    def visit(self, node: WhileNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(BlockNode)
    def visit(self, node: BlockNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(AssignNode)
    def visit(self, node: AssignNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(DynamicDispatchNode)
    def visit(self, node: DynamicDispatchNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(StaticDispatchNode)
    def visit(self, node: StaticDispatchNode, context: ContextType, errors, current_type: ContextType):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(IntegerNode)
    def visit(self, node: IntegerNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(BooleanNode)
    def visit(self, node: BooleanNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(StringNode)
    def visit(self, node: StringNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(PrintIntegerNode)
    def visit(self, node: PrintIntegerNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(PrintStringNode)
    def visit(self, node: PrintStringNode, context: ContextType, errors, current_type: Type):
        # TODO: Complete all type checking for Project 1
        return True

    @visitor.when(ScanNode)
    def visit(self, node: ScanNode, context: ContextType, errors, current_type: Type):
        node.return_type = 'Int' if node.method == 'in_int' else 'String'
        node.dynamic_type = node.return_type
        return True

