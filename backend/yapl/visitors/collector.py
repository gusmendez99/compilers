import settings
import yapl.visitors.decorator as visitor
from yapl.models.types import *
from yapl.models.context import Context
from yapl.utils import CheckError
from yapl.models.nodes import (
    Node,
    ProgramNode,
    ClassNode,
    AttributeNode,
    MethodNode,
    ParamNode
)

class TypeCollectorVisitor:

    @visitor.on('node')
    def visit(self, node: Node, context: ContextType, errors):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node: ProgramNode, context: ContextType, errors):
        for c in node.class_list:
            self.visit(c, context, errors)

        context.create_type("Object")
        context.create_type("Int")
        context.create_type("String")
        context.create_type("Bool")
        context.create_type("IO")
        context.create_type("SELF_TYPE")

        context.get_type("IO").define_method("in_string", "SELF_TYPE", [], [])
        context.get_type("IO").define_method("in_int", "SELF_TYPE", [], [])
        context.get_type("IO").define_method("out_string", "IO", ["x"], ["String"])
        context.get_type("IO").define_method("out_int", "IO", ["x"], ["Int"])

        context.get_type("Object").define_method("abort", "Object", [], [])
        context.get_type("Object").define_method("type_name", "String", [], [])
        context.get_type("Object").define_method("copy", "SELF_TYPE", [], [])

        context.get_type("IO").define_method("abort", "Object", [], [])
        context.get_type("IO").define_method("type_name", "String", [], [])
        context.get_type("IO").define_method("copy", "SELF_TYPE", [], [])

        context.get_type("Int").define_method("abort", "Object", [], [])
        context.get_type("Int").define_method("type_name", "String", [], [])
        context.get_type("Int").define_method("copy", "SELF_TYPE", [], [])

        context.get_type("String").define_method("abort", "Object", [], [])
        context.get_type("String").define_method("type_name", "String", [], [])
        context.get_type("String").define_method("copy", "SELF_TYPE", [], [])

        context.get_type("Bool").define_method("abort", "Object", [], [])
        context.get_type("Bool").define_method("type_name", "String", [], [])
        context.get_type("Bool").define_method("copy", "SELF_TYPE", [], [])

        context.get_type("String").define_method("length", "Int", [], [])
        context.get_type("String").define_method("concat", "String", ["s"], ["String"])
        context.get_type("String").define_method("substr", "String", ["i", "lex"], ["Int", "Int"])

    @visitor.when(ClassNode)
    def visit(self, node: ClassNode, context: ContextType, errors):
        context.create_type(node.name)
        if node.parent != None:
            context.get_type(node.name).parent = node.parent


class TypeBuilderVisitor:
    @visitor.on('node')
    def visit(self, node: Node, context: ContextType, errors):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node: ProgramNode, context: ContextType, errors):
        for c in node.class_list:
            self.visit(c, context, errors)
        node.context_type = context

    @visitor.when(ClassNode)
    def visit(self, node: ClassNode, context: ContextType, errors):
        current_type = context.get_type(node.name)
        for feature in node.features:
            self.visit(feature, context, errors, current_type)

    @visitor.when(AttributeNode)
    def visit(self, node: AttributeNode, context: ContextType, errors, current_type: Type):
        current_type.define_attribute(node.name, node.attr_type)

    @visitor.when(MethodNode)
    def visit(self, node: MethodNode, context: ContextType, errors, current_type: Type):
        args = []
        argsTypes = []
        for arg in node.params:
            name, type = self.visit(arg, context, errors, current_type)
            args.append(name)
            argsTypes.append(type)
        current_type.define_method(node.name, node.method_type, args, argsTypes)

    @visitor.when(ParamNode)
    def visit(self, node: ParamNode, context: ContextType, errors, current_type: Type):
        if context.get_type(node.param_type) == "SELF_TYPE":
            return (node.name, current_type)
        return (node.name, context.get_type(node.param_type).name)


class TypeHierarchy:
    def __init__(self):
        self.types_defined = {}
        self.ast_children_nodes = {}

        self.define_type('Object')
        self.define_type('IO')
        self.define_type('Int')
        self.define_type('String')
        self.define_type('Bool')

        self.ast_children_nodes['Object'] = []
        self.ast_children_nodes['IO'] = []
        self.ast_children_nodes['Int'] = []
        self.ast_children_nodes['String'] = []
        self.ast_children_nodes['Bool'] = []

        self.set_child('Object', 'IO')


    def define_type(self, name: str):
        self.types_defined[name] = []

    def set_child(self, name: str, child: str):
        if name not in self.types_defined.keys():
            self.define_type(name)
        self.types_defined[name].append(child)

    def set_child_node(self, name: str, child: ClassNode):
        if name not in self.ast_children_nodes.keys():
            self.ast_children_nodes[name] = []
        self.ast_children_nodes[name].append(child)

    def inheritance_resolve(self, context_type: ContextType, current_parent: str):
        for child in self.ast_children_nodes[current_parent]:
            inheritance_resolve_visitor = InheritanceResolveVisitor()
            inheritance_resolve_visitor.visit(child, context_type)
        for child in self.types_defined[current_parent]:
            self.inheritance_resolve(context_type, child)


class Hierarchy:
    @visitor.on('node')
    def visit(self, node: Node, context: ContextType, type_hierarchy: TypeHierarchy):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node: ProgramNode, context: ContextType, type_hierarchy: TypeHierarchy):
        for c in node.class_list:
            if not self.visit(c, context, type_hierarchy):
                return False

    @visitor.when(ClassNode)
    def visit(self, node: ClassNode, context: ContextType, type_hierarchy: TypeHierarchy):
        if node.name not in type_hierarchy.types_defined.keys():
            type_hierarchy.define_type(node.name)
        if node.name not in type_hierarchy.ast_children_nodes.keys():
            type_hierarchy.ast_children_nodes[node.name] = []
        if node.parent is None:
            node.parent = 'Object'
        if node.parent not in context.types.keys():
            # print("Type " + node.parent + " not defined")
            settings.compile_errors.append(
                CheckError(
                    text="Type " + node.parent + " not defined",
                    line=node.line
                )
            )
            return False
        type_hierarchy.set_child(node.parent, node.name)
        type_hierarchy.set_child_node(node.parent, node)
        return True



class InheritanceResolveVisitor:
    @visitor.on('node')
    def visit(self, node: Node, context: ContextType):
        pass

    @visitor.when(ProgramNode)
    def visit(self, node: ProgramNode, context: ContextType):
        for clas in node.class_list:
            self.visit(clas, context)

    @visitor.when(ClassNode)
    def visit(self, node: ClassNode, context: ContextType):
        parent_class = node.parent
        if parent_class is None:
            parent_class = 'Object'

        type_of_parent = context.get_type(parent_class)
        type_of_class = context.get_type(node.name)

        type_of_class.parent = parent_class

        for attribute in type_of_parent.attributes.values():
            if attribute in type_of_class.attributes.values():
                # print('The attributes of a class can not be redefined in the child class')
                settings.compile_errors.append(
                    CheckError(
                        text="The attributes of a class can not be redefined in the child class",
                        line=node.line
                    )
                )
                return False
            else:
                type_of_class.define_attribute(attribute.name, attribute.attribute_type)

        for method_of_parent in type_of_parent.methods.values():
            founded = False
            for method_of_class in type_of_class.methods.values():
                method_of_parent: Method
                method_of_class: Method
                if method_of_parent.name == method_of_class.name:
                    founded = True
                    if method_of_parent.return_type != method_of_class.return_type:
                        # print("Return type of method must be the same of return type from inherits class")
                        settings.compile_errors.append(
                            CheckError(
                                text="Return type of method must be the same of return type from inherits class",
                                line=node.line
                            )
                        )
                        return False
                    if len(method_of_parent.arguments) != len(method_of_class.arguments):
                        # print("The amount of arguments of method must be the same of method from inherits class")
                        settings.compile_errors.append(
                            CheckError(
                                text="The amount of arguments of method must be the same of method from inherits class",
                                line=node.line
                            )
                        )
                        return False
                    for i in range(len(method_of_parent.arguments)):
                        attr_1: Attribute = method_of_parent.arguments[i]
                        attr_2: Attribute = method_of_class.arguments[i]
                        if attr_1.attribute_type != attr_2.attribute_type:
                            # print("Type of attribute in position " + str(i) + " must be the same of the method from inherits class")
                            settings.compile_errors.append(
                                CheckError(
                                    text="Type of attribute in position " + str(i) + " must be the same of the method from inherits class",
                                    line=node.line
                                )
                            )
                            return False
                if founded:
                    break
            else:
                arguments = [arg.name for arg in method_of_parent.arguments]
                arguments_types = [arg.attribute_type for arg in method_of_parent.arguments]
                type_of_class.define_method(method_of_parent.name, method_of_parent.return_type, arguments,
                                           arguments_types)


        return True

