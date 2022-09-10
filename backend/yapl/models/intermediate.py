import uuid

PUSH_ALL_REGISTERS = "\n\n --- *PUSH_ALL_REGISTERS_here* --- \n\n"
POP_ALL_REGISTERS = "\n\n --- *POP_ALL_REGISTERS_here* --- \n\n"


class Node:
    pass


class ProgramNode(Node):
    def __init__(self, dot_types: list, dot_data: list, functions: list, inheritance):
        super(ProgramNode, self).__init__()
        self.dot_types = dot_types
        self.dot_data = dot_data
        self.functions = functions
        self.inheritance = inheritance

    def inheritance_table_code(self):
        result = "inheritance_table: .word 0"
        for parents_class_tag in self.inheritance[1:]:
            result += ", " + str(parents_class_tag)
        result += "\n"
        return result

    @property
    def main_size(self):
        for t in self.dot_types:
            if t.name == "Main":
                return t.object_length

    def to_mips(self):
        pass


class TypeNode(Node):
    def __init__(self, name: str, class_tag: int, attributes: list, methods: list):
        super(TypeNode, self).__init__()
        self.name = name
        self.class_tag = class_tag
        self.attributes = attributes
        self.methods = methods
        self.attrs_count = len(self.attributes)
        self.methods_count = len(self.methods)
        self.object_length = 3 + self.attrs_count

    def get_attr_index(self, attr_name):
        for f in self.attributes:
            if f.name == attr_name:
                return f.attr_index

    def class_dispatch_table(self, previous):
        # result = self.name + " Dispatch Table: .word "
        result = self.name + " Dispatch Table: "
        method_strings = []
        for i in range(len(self.methods)):
            method_strings.append(self.methods[i].name)
        result += "\n"
        for i in range(len(method_strings)):
            if (
                method_strings[i] + "_ptr: .asciiz " + '"' + method_strings[i] + '"\n'
            ) not in previous:
                result += (
                    "-> "
                    + method_strings[i]
                    + "_ptr: .asciiz "
                    + '"'
                    + method_strings[i]
                    + '"\n'
                )
        return result

    def class_dispatch_table_code(self, previous):
        # result = self.name + " Dispatch Table: .word "
        result = self.name + "_dispatch_table: "
        method_strings = []
        for i in range(len(self.methods)):
            method_strings.append(self.methods[i].name)
        result += "\n"
        for i in range(len(method_strings)):
            if (
                method_strings[i] + "_ptr: .asciiz " + '"' + method_strings[i] + '"\n'
            ) not in previous:
                result += (
                    ""
                    + method_strings[i]
                    + "_ptr: .asciiz "
                    + '"'
                    + method_strings[i]
                    + '"\n'
                )
        return result

    def to_mips(self, previous):
        pass

    def __repr__(self):
        return "type " + self.name + ":" + str(self.class_tag)


class DataNode(Node):
    def __init__(self, vname, value):
        super(DataNode, self).__init__()
        self.vname = vname
        self.value = value

    def to_mips(self):
        pass

    def __repr__(self):
        return "Data: " + self.vname + " = " + self.value


class FunctionNode(Node):
    def __init__(
        self,
        fname: str,
        findex: int,
        params: list,
        local_vars: list,
        instructions: list,
    ):
        super(FunctionNode, self).__init__()
        self.fname = fname
        self.findex = findex
        self.params = params
        self.local_vars = local_vars
        self.instructions = instructions

    @staticmethod
    def local_index(local_name):
        return int(local_name.split("_")[-1])

    def to_mips(self):
        pass

    def __repr__(self):
        return self.fname + "(" + str(self.params) + ")"


class LocalNode(Node):
    def __init__(self, vname: str, local_index: int, value):
        super(LocalNode, self).__init__()
        self.vname = vname
        self.local_index = local_index
        self.value = value

    def to_mips(self):
        pass


class InstructionNode(Node):
    def __init__(self, name: str):
        super(InstructionNode, self).__init__()
        self.name = name

    def to_mips(self):
        pass


class ValueNode(InstructionNode):
    def __init__(self, value: str, number: str):
        super(ValueNode, self).__init__("value")
        self.value = value
        self.number = number

    def to_mips(self):
        pass

    @property
    def local_value_index(self):
        return int(self.value.split("_")[-1])


class IntegerNode(InstructionNode):
    def __init__(self, value):
        super(IntegerNode, self).__init__("integer")
        self.value = value

    def to_mips(self):
        pass


# Assign Node


class AssignNode(InstructionNode):
    def __init__(self, dest, source):
        super(AssignNode, self).__init__("assign")
        self.dest = dest
        self.source = source
        self.value = dest

    @property
    def local_dest_index(self):
        return int(self.dest.split("_")[-1])

    @property
    def local_source_index(self):
        return int(self.source.split("_")[-1])

    @property
    def local_value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


# Compare Nodes (CMP)


class EqualNode(InstructionNode):
    def __init__(self, number, value):
        super(EqualNode, self).__init__("equal")
        self.number = number
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def number_index(self):
        return int(self.number.split("_")[-1])

    def to_mips(self):
        pass


class LessNode(InstructionNode):
    def __init__(self, number, value):
        super(LessNode, self).__init__("less_than")
        self.number = number
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def number_index(self):
        return int(self.number.split("_")[-1])

    def to_mips(self):
        pass


class LessEqualNode(InstructionNode):
    def __init__(self, number, value):
        super(LessEqualNode, self).__init__("less_equal")
        self.number = number
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def number_index(self):
        return int(self.number.split("_")[-1])

    def to_mips(self):
        pass


class ParamNode(InstructionNode):
    def __init__(self, name: str):
        super(ParamNode, self).__init__("param")
        self.name = name

    @property
    def local_index(self):
        return int(self.name.split("_")[-1])

    def to_mips(self):
        pass


class ArithmeticNode(InstructionNode):
    def __init__(self, left, right, value):
        super(ArithmeticNode, self).__init__("arithmetic")
        self.value = value
        self.left = left
        self.right = right


class PlusNode(ArithmeticNode):
    def __init__(self, left, right, value):
        super(PlusNode, self).__init__(left, right, value)
        self.arith_op = "+"

    @property
    def local_left_index(self):
        return int(self.left.split("_")[-1])

    @property
    def local_right_index(self):
        return int(self.right.split("_")[-1])

    @property
    def local_value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class MinusNode(ArithmeticNode):
    def __init__(self, left, right, value):
        super(MinusNode, self).__init__(left, right, value)
        self.arith_op = "-"

    @property
    def local_left_index(self):
        return int(self.left.split("_")[-1])

    @property
    def local_right_index(self):
        return int(self.right.split("_")[-1])

    @property
    def local_value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class StarNode(ArithmeticNode):
    def __init__(self, left, right, value):
        super(StarNode, self).__init__(left, right, value)
        self.arith_op = "*"

    @property
    def local_left_index(self):
        return int(self.left.split("_")[-1])

    @property
    def local_right_index(self):
        return int(self.right.split("_")[-1])

    @property
    def local_value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class DivNode(ArithmeticNode):
    def __init__(self, left, right, value):
        super(DivNode, self).__init__(left, right, value)
        self.arith_op = "/"

    @property
    def local_left_index(self):
        return int(self.left.split("_")[-1])

    @property
    def local_right_index(self):
        return int(self.right.split("_")[-1])

    @property
    def local_value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class AttributeNode(Node):
    def __init__(self, name: str, attr_index: int):
        super(AttributeNode, self).__init__()
        self.name = name
        self.attr_index = attr_index

    def to_mips(self) -> str:
        pass

    def __repr__(self):
        return "attribute " + self.name + ":" + str(self.attr_index)


class MethodNode(Node):
    def __init__(self, name: str, function_name: str, function_index: int):
        super(MethodNode, self).__init__()
        self.name = name
        self.function_name = function_name
        self.function_index = function_index

    def to_mips(self) -> str:
        pass

    def __repr__(self):
        return "method " + self.name + ": " + str(self.function_index)


class GetAttribNode(InstructionNode):
    def __init__(self, instance_name, instance_type, attr_index, value):
        super(GetAttribNode, self).__init__("get")
        self.instance_name = instance_name
        self.instance_type = instance_type
        self.attr_index = attr_index
        self.value = value

    @property
    def instance_index(self):
        return int(self.instance_name.split("_")[-1])

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class SetAttribNode(InstructionNode):
    def __init__(self, instance_name, instance_type, attr_index, value):
        super(SetAttribNode, self).__init__("set")
        self.instance_name = instance_name
        self.instance_type = instance_type
        self.attr_index = attr_index
        self.value = value

    @property
    def instance_index(self):
        return int(self.instance_name.split("_")[-1])

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class GetIndexNode(InstructionNode):
    def __init__(self, array_name, index):
        super(GetIndexNode, self).__init__("get_index")
        self.array_name = array_name
        self.index = index


class SetIndexNode(InstructionNode):
    def __init__(self, array_name, index, value):
        super(SetIndexNode, self).__init__("set_index")
        self.array_name = array_name
        self.index = index
        self.value = value


class IsVoidNode(InstructionNode):
    def __init__(self, instance, value):
        super(IsVoidNode, self).__init__("is_void")
        self.instance = instance
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def instance_index(self):
        return int(self.instance.split("_")[-1])

    def to_mips(self):
        pass


class AllocateNode(InstructionNode):
    def __init__(
        self,
        allocate_size: int,
        class_tag: str,
        object_size: str,
        dispatch_ptr: str,
        value: str,
    ):
        super(AllocateNode, self).__init__("allocate")
        self.allocate_size = allocate_size * 4
        self.class_tag = class_tag
        self.object_size = object_size
        self.dispatch_ptr = dispatch_ptr
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class ArrayNode(InstructionNode):
    def __init__(self, length):
        super(ArrayNode, self).__init__("array")
        self.length = length


class TypeOfNode(InstructionNode):
    def __init__(self, instance_name, value):
        super(TypeOfNode, self).__init__("type_of")
        self.instance_name = instance_name
        self.value = value

    @property
    def instance_index(self):
        return int(self.instance_name.split("_")[-1])

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class LabelNode(InstructionNode):
    def __init__(self, label_name):
        super(LabelNode, self).__init__("label")
        self.label_name = label_name

    def to_mips(self):
        pass


class GotoNode(InstructionNode):
    def __init__(self, label_to_jump):
        super(GotoNode, self).__init__("goto")
        self.label_to_jump = label_to_jump

    def to_mips(self):
        pass


class GotoIfNode(InstructionNode):
    def __init__(self, predicate_name, if_label):
        super(GotoIfNode, self).__init__("goto_if")
        self.predicate_name = predicate_name
        self.if_label = if_label

    @property
    def predicate_value(self):
        return int(self.predicate_name.split("_")[-1])

    def to_mips(self):
        pass


class StackGotoNode(InstructionNode):
    def __init__(self, local_to_jump):
        super(StackGotoNode, self).__init__("goto")
        self.local_to_jump = local_to_jump

    def to_mips(self):
        pass


class PushaNode(InstructionNode):
    def __init__(self):
        super(PushaNode, self).__init__("push_all_registers")

    def to_mips(self):
        pass


class PopaNode(InstructionNode):
    def __init__(self):
        super(PopaNode, self).__init__("pop_all_registers")

    def to_mips(self):
        pass


class StaticCallNode(InstructionNode):
    def __init__(self, func_name: str, instance: str, value, count: int):
        super(StaticCallNode, self).__init__("static_call")
        self.func_name = func_name
        self.instance = instance
        self.count = count
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class DynamicCallNode(InstructionNode):
    def __init__(
        self, func_name: str, instance: str = "", value: str = "", count: int = 0
    ):
        super(DynamicCallNode, self).__init__("dynamic_call")
        self.func_name = func_name
        self.instance = instance
        self.value = value
        self.count = count

    @property
    def instance_index(self):
        return int(self.instance.split("_")[-1])

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def func_name_index(self):
        return int(self.func_name.split("_")[-1])

    def to_mips(self):
        pass


class ArgNode(InstructionNode):
    def __init__(self, arg_name, arg_index):
        super(ArgNode, self).__init__("arg")
        self.arg_name = arg_name
        self.arg_index = arg_index

    @property
    def arg_name_index(self):
        return int(self.arg_name.split("_")[-1])

    def to_mips(self):
        pass


class CopyNode(InstructionNode):
    def __init__(self, instance, value):
        super(CopyNode, self).__init__("copy")
        self.instance = instance
        self.value = value

    @property
    def instance_index(self):
        return int(self.instance.split("_")[-1])

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def node_id(self):
        return str(uuid.uuid4().hex)

    def to_mips(self):
        pass


class ReturnNode(InstructionNode):
    def __init__(self, value=None):
        super(ReturnNode, self).__init__("return")
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class LoadNode(InstructionNode):
    def __init__(self, msg, value):
        super(LoadNode, self).__init__("load")
        self.msg = msg
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class StringCmp(InstructionNode):
    def __init__(self, str1, str2, value):
        super(StringCmp, self).__init__("string_cmp")
        self.str1 = str1
        self.str2 = str2
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def str1_index(self):
        return int(self.str1.split("_")[-1])

    @property
    def str2_index(self):
        return int(self.str2.split("_")[-1])

    def to_mips(self):
        pass


class LengthNode(InstructionNode):
    def __init__(self, instance_name, value):
        super(LengthNode, self).__init__("length")
        self.instance_name = instance_name
        self.value = value

    @property
    def instance_name_index(self):
        return int(self.instance_name.split("_")[-1])

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def node_id(self):
        return str(uuid.uuid4().hex)

    def to_mips(self):
        pass


class ConcatNode(InstructionNode):
    def __init__(self, str1, str2, len1, len2, value):
        super(ConcatNode, self).__init__("concat")
        self.str1 = str1
        self.str2 = str2
        self.len1 = len1
        self.len2 = len2
        self.value = value

    @property
    def str1_index(self):
        return int(self.str1.split("_")[-1])

    @property
    def str2_index(self):
        return int(self.str2.split("_")[-1])

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def len1_index(self):
        return int(self.len1.split("_")[-1])

    @property
    def len2_index(self):
        return int(self.len2.split("_")[-1])

    @property
    def node_id(self):
        return str(uuid.uuid4().hex)

    def to_mips(self):
        pass


class SubstringNode(InstructionNode):
    def __init__(self, text, index, length, value):
        super(SubstringNode, self).__init__("substring")
        self.text = text
        self.index = index
        self.length = length
        self.value = value

    @property
    def text_index(self):
        return int(self.text.split("_")[-1])

    @property
    def index_index(self):
        return int(self.index.split("_")[-1])

    @property
    def length_index(self):
        return int(self.length.split("_")[-1])

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    @property
    def node_id(self):
        return str(uuid.uuid4().hex)

    def to_mips(self):
        pass


class ParentOfNode(InstructionNode):
    def __init__(self, instance_name, value):
        super(ParentOfNode, self).__init__("parent_of")
        self.instance = instance_name
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class ToStrNode(InstructionNode):
    def __init__(self, ivalue, value):
        super(ToStrNode, self).__init__("to_str")
        self.value = value
        self.ivalue = ivalue


class ReadIntegerNode(InstructionNode):
    def __init__(self, value):
        super(ReadIntegerNode, self).__init__("read_int")
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class ReadStringNode(InstructionNode):
    def __init__(self, value):
        super(ReadStringNode, self).__init__("read_str")
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        pass


class PrintIntegerNode(InstructionNode):
    def __init__(self, int_addr):
        super(PrintIntegerNode, self).__init__("print_int")
        self.int_addr = int_addr

    @property
    def int_addr_index(self):
        return int(self.int_addr.split("_")[-1])

    def to_mips(self):
        pass


class PrintStringNode(InstructionNode):
    def __init__(self, str_addr):
        super(PrintStringNode, self).__init__("print_str")
        self.str_addr = str_addr

    def get_str_index(self):
        return int(self.str_addr.split("_")[-1])

    def to_mips(self):
        pass


class StringCopyNode(InstructionNode):
    def __init__(self, string_ptr, value):
        super(StringCopyNode, self).__init__("str_copy")
        self.string_ptr = string_ptr
        self.value = value


class BooleanNegation(InstructionNode):
    def __init__(self, expr):
        super(BooleanNegation, self).__init__("not")
        self.expr = expr

    @property
    def expr_index(self):
        return int(self.expr.split("_")[-1])

    def to_mips(self):
        pass


class AbortNode(InstructionNode):
    def __init__(self, error_message):  # , value):
        super(AbortNode, self).__init__("abort")
        self.error_message = error_message
        # self.value = value

    def to_mips(self):
        pass
