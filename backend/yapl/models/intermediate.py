from uuid import uuid4

def uuidv4():
    return uuid4().hex

DEFAULT_DATA_HEADERS = """.data
empty_string: .asciiz ""
null_reference: .asciiz "ERROR: null ref exception"
zero_division: .asciiz "ERROR: division by zero not allowed"
main_prototype: .word 1, 3, Main_dispatch_table
"""

PUSH_SP_INSTRUCTION = "subu $sp, $sp, 4"
POP_SP_INSTRUCTION = "addu $sp, $sp, 4"

PUSH_ALL_REGISTERS = f"""{PUSH_SP_INSTRUCTION}
sw $ra, ($sp)
{PUSH_SP_INSTRUCTION}
sw $a0, ($sp)
{PUSH_SP_INSTRUCTION}
sw $a1, ($sp)
{PUSH_SP_INSTRUCTION}
sw $a2, ($sp)
{PUSH_SP_INSTRUCTION}
sw $a3, ($sp)
{PUSH_SP_INSTRUCTION}
sw $t0, ($sp)
{PUSH_SP_INSTRUCTION}
sw $t1, ($sp)
{PUSH_SP_INSTRUCTION}
sw $t2, ($sp)
{PUSH_SP_INSTRUCTION}
sw $t3, ($sp)
{PUSH_SP_INSTRUCTION}
sw $t4, ($sp)
"""

POP_ALL_REGISTERS = f"""lw $t4, ($sp)
{POP_SP_INSTRUCTION}
lw $t3, ($sp)
{POP_SP_INSTRUCTION}
lw $t2, ($sp)
{POP_SP_INSTRUCTION}
lw $t1, ($sp)
{POP_SP_INSTRUCTION}
lw $t0, ($sp)
{POP_SP_INSTRUCTION}
lw $a3, ($sp)
{POP_SP_INSTRUCTION}
lw $a2, ($sp)
{POP_SP_INSTRUCTION}
lw $a1, ($sp)
{POP_SP_INSTRUCTION}
lw $a0, ($sp)
{POP_SP_INSTRUCTION}
lw $ra, ($sp)
{POP_SP_INSTRUCTION}
"""


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
        mips_code = DEFAULT_DATA_HEADERS
        mips_code += self.inheritance_table_code()
        for t in self.dot_types:
            mips_code += t.to_mips(mips_code)
        for data in self.dot_data:
            mips_code += data.to_mips()
        mips_code += '.text\n'
        mips_code += '.globl main\n'
        mips_code += 'main:\n'

        # Static Call
        mips_code += PUSH_ALL_REGISTERS
        mips_code += 'jal ' + 'init_Main' + '\n'
        mips_code += POP_ALL_REGISTERS

        mips_code += PUSH_ALL_REGISTERS
        # Push main instance
        mips_code += f'{PUSH_SP_INSTRUCTION}\n'

        mips_code += 'sw $v0, ($sp)\n'

        mips_code += 'jal def_Main_main\n'
        mips_code += 'addu, $sp, $sp, 4\n'
        mips_code += POP_ALL_REGISTERS
        mips_code += 'li $v0, 10\n'
        mips_code += 'syscall\n\n'
        for function in self.functions:
            mips_code += function.to_mips()
        return mips_code


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
        result = self.name + "_dispatch_table: .word "
        method_strings = []
        for i in range(len(self.methods)):
            method_strings.append(self.methods[i].name)
            if i == 0:
                result += self.methods[i].name + "_ptr"
                result += ", " + str(self.methods[i].function_name)
            else:
                result += ", " + self.methods[i].name + "_ptr"
                result += ", " + str(self.methods[i].function_name)
        result += '\n'
        for i in range(len(method_strings)):
            if (method_strings[i] + "_ptr: .asciiz " + '"' + method_strings[i] + '"\n') not in previous:
                result += method_strings[i] + "_ptr: .asciiz " + '"' + method_strings[i] + '"\n'
        return result

    def to_mips(self, previous):
        mips_code = ''
        mips_code += self.class_dispatch_table(previous)
        return mips_code

    def __repr__(self):
        return "type " + self.name + ":" + str(self.class_tag)


class DataNode(Node):
    def __init__(self, vname, value):
        super(DataNode, self).__init__()
        self.vname = vname
        self.value = value

    def to_mips(self):
        mips_code = self.vname + ':' + ' ' + '.asciiz' + ' ' + self.value + '\n'
        return mips_code

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
        mips_code = ''
        mips_code += '.globl ' + self.fname + '\n'
        mips_code += self.fname + ':\n'
        mips_code += f'{PUSH_SP_INSTRUCTION}\n'
        mips_code += 'sw $fp, ($sp)\n'
        mips_code += 'addu $fp, $sp, 4\n'
        mips_code += f'{PUSH_SP_INSTRUCTION}\n'
        mips_code += 'sw $ra, ($sp)\n'
        for local in self.local_vars:
            mips_code += f'{PUSH_SP_INSTRUCTION}\n'
            mips_code += 'sw $zero, ($sp)\n'
        for instruction in self.instructions:
            mips_code += instruction.to_mips()
        mips_code += '\n'
        return mips_code

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
        mips_code = ''
        local_dest_increment = self.local_value_index * 4 + 12
        mips_code += 'li $a0, ' + str(self.number) + '\n'
        mips_code += 'sw $a0, ' + str(-local_dest_increment) + '($fp)\n'
        return mips_code

    @property
    def local_value_index(self):
        return int(self.value.split("_")[-1])


class IntegerNode(InstructionNode):
    def __init__(self, value):
        super(IntegerNode, self).__init__("integer")
        self.value = value

    def to_mips(self):
        pass



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
        mips_code = ''
        local_dest_increment = self.local_dest_index * 4 + 12
        local_source_increment = self.local_source_index * 4 + 12
        local_value_increment = self.local_value_index * 4 + 12
        mips_code += 'lw $a0, ' + str(-local_source_increment) + '($fp)\n'
        mips_code += 'sw $a0, ' + str(-local_dest_increment) + '($fp)\n'
        mips_code += 'sw $a0, ' + str(-local_value_increment) + '($fp)\n'
        return mips_code


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
        mips_code = ''
        number_increment = self.number_index * 4 + 12
        mips_code += 'lw $a1, ' + str(-number_increment) + '($fp)\n'
        mips_code += 'li $a0, 1\n'
        returnTrue_unique_v4 = uuidv4()
        mips_code += 'beqz $a1, returnTrue' + returnTrue_unique_v4 + '\n'
        mips_code += 'li $a0, 0\n'
        mips_code += 'returnTrue' + returnTrue_unique_v4 + ':\n'
        value_increment = self.value_index * 4 + 12
        mips_code += 'sw $a0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


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
        mips_code = ''
        number_increment = self.number_index*4 + 12
        mips_code += 'lw $a1, ' + str(-number_increment) + '($fp)\n'
        mips_code += 'li $a0, 1\n'
        returnTrue_unique_v4 = uuidv4()
        mips_code += 'bltz $a1, returnTrue' + returnTrue_unique_v4 + '\n'
        mips_code += 'li $a0, 0\n'
        mips_code += 'returnTrue' + returnTrue_unique_v4 + ':\n'
        value_increment = self.value_index*4 + 12
        mips_code += 'sw $a0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


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
        mips_code = ''
        number_increment = self.number_index * 4 + 12
        mips_code += 'lw $a1, ' + str(-number_increment) + '($fp)\n'
        mips_code += 'li $a0, 1\n'
        returnTrue_unique_v4 = uuidv4()
        mips_code += 'blez $a1, returnTrue' + returnTrue_unique_v4 + '\n'
        mips_code += 'li $a0, 0\n'
        mips_code += 'returnTrue' + returnTrue_unique_v4 + ':\n'
        value_increment = self.value_index * 4 + 12
        mips_code += 'sw $a0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


class ParamNode(InstructionNode):
    def __init__(self, name: str):
        super(ParamNode, self).__init__("param")
        self.name = name

    @property
    def local_index(self):
        return int(self.name.split("_")[-1])

    def to_mips(self):
        local_increment = self.local_index * 4 + 12
        mips_code = f'{PUSH_SP_INSTRUCTION}\n'
        mips_code += 'lw $a0, ' + str(-local_increment) + '($fp)\n'
        mips_code += 'sw $a0, ($sp)\n'
        return mips_code


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
        local_left_increment = self.local_left_index * 4 + 12
        local_right_increment = self.local_right_index * 4 + 12
        local_value_increment = self.local_value_index * 4 + 12
        mips_code = ''
        mips_code += 'lw $a0, ' + str(-local_left_increment) + '($fp)\n'
        mips_code += 'lw $a1, ' + str(-local_right_increment) + '($fp)\n'
        mips_code += 'add $a0, $a0, $a1\n'
        mips_code += 'sw $a0, ' + str(-local_value_increment) + '($fp)\n'
        return mips_code


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
        local_left_increment = self.local_left_index * 4 + 12
        local_right_increment = self.local_right_index * 4 + 12
        local_value_increment = self.local_value_index * 4 + 12
        mips_code = ''
        mips_code += 'lw $a0, ' + str(-local_left_increment) + '($fp)\n'
        mips_code += 'lw $a1, ' + str(-local_right_increment) + '($fp)\n'
        mips_code += 'sub $a0, $a0, $a1\n'
        mips_code += 'sw $a0, ' + str(-local_value_increment) + '($fp)\n'
        return mips_code


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
        local_left_increment = self.local_left_index * 4 + 12
        local_right_increment = self.local_right_index * 4 + 12
        local_value_increment = self.local_value_index * 4 + 12
        mips_code = ''
        mips_code += 'lw $a0, ' + str(-local_left_increment) + '($fp)\n'
        mips_code += 'lw $a1, ' + str(-local_right_increment) + '($fp)\n'
        mips_code += 'multu $a0, $a1\n'
        mips_code += 'mflo $a0\n'
        mips_code += 'sw $a0, ' + str(-local_value_increment) + '($fp)\n'
        return mips_code


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
        local_left_increment = self.local_left_index * 4 + 12
        local_right_increment = self.local_right_index * 4 + 12
        local_value_increment = self.local_value_index * 4 + 12
        mips_code = ''
        mips_code += 'lw $a0, ' + str(-local_left_increment) + '($fp)\n'
        mips_code += 'lw $a1, ' + str(-local_right_increment) + '($fp)\n'
        mips_code += 'div $a0, $a1\n'
        mips_code += 'mflo $a0\n'
        mips_code += 'sw $a0, ' + str(-local_value_increment) + '($fp)\n'
        return mips_code


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
        instance_increment = self.instance_index * 4 + 12
        mips_code = ''
        mips_code += 'lw $a0, ' + str(-instance_increment) + '($fp)\n'
        attr_increment = self.attr_index * 4 + 12
        mips_code += 'lw $a1, ' + str(attr_increment) + '($a0)\n'
        value_increment = self.value_index * 4 + 12
        mips_code += 'sw $a1, ' + str(-value_increment) + '($fp)\n'
        return mips_code


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
        instance_increment = self.instance_index * 4 + 12
        mips_code = ''
        mips_code += 'lw $a0, ' + str(-instance_increment) + '($fp)\n'
        value_increment = self.value_index * 4 + 12
        mips_code += 'lw $a1, ' + str(-value_increment) + '($fp)\n'
        attr_increment = self.attr_index * 4 + 12
        mips_code += 'sw $a1, ' + str(attr_increment) + '($a0)\n'
        return mips_code


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
        mips_code = ''
        instance_increment = self.instance_index * 4 + 12
        mips_code += 'lw $a1, ' + str(-instance_increment) + '($fp)\n'
        mips_code += 'li $a0, 1\n'
        isVoid_unique_v4 = uuidv4()
        mips_code += 'beq $a1, $zero, isVoid'  + isVoid_unique_v4 + '\n'
        mips_code += 'li $a0, 0\n'
        mips_code += 'isVoid' + isVoid_unique_v4 + ':\n'
        value_increment = self.value_index * 4 + 12
        mips_code += 'sw $a0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


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
        value_increment = self.value_index * 4 + 12
        mips_code = ''
        mips_code += 'li $a0, ' + str(self.allocate_size) + '\n'
        mips_code += 'li $v0, 9\n'
        mips_code += 'syscall\n'
        mips_code += 'li $a0, ' + self.class_tag + '\n'
        mips_code += 'sw $a0, ' + '($v0)\n'
        mips_code += 'li $a0, ' + self.object_size + '\n'
        mips_code += 'sw $a0, ' + '4($v0)\n'
        mips_code += 'la $a0, ' + self.dispatch_ptr + '\n'
        mips_code += 'sw $a0, ' + '8($v0)\n'
        mips_code += 'sw $v0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


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
        mips_code = ''
        instance_increment = self.instance_index * 4 + 12
        mips_code += 'lw $a0, ' + str(-instance_increment) + '($fp)' '\n'
        mips_code += 'lw $a0, ($a0)\n'
        mips_code += 'sw $a0, ' + str(-(self.value_index * 4 + 12)) + '($fp)\n'
        return mips_code


class LabelNode(InstructionNode):
    def __init__(self, label_name):
        super(LabelNode, self).__init__("label")
        self.label_name = label_name

    def to_mips(self):
        return self.label_name + ':\n'


class GotoNode(InstructionNode):
    def __init__(self, label_to_jump):
        super(GotoNode, self).__init__("goto")
        self.label_to_jump = label_to_jump

    def to_mips(self):
        return "j " + self.label_to_jump + '\n'


class GotoIfNode(InstructionNode):
    def __init__(self, predicate_name, if_label):
        super(GotoIfNode, self).__init__("goto_if")
        self.predicate_name = predicate_name
        self.if_label = if_label

    @property
    def predicate_value(self):
        return int(self.predicate_name.split("_")[-1])

    def to_mips(self):
        mips_code = ''
        mips_code += 'lw $a0, ' + str(-(self.predicate_value * 4 + 12)) + '($fp)\n'
        mips_code += 'bne $a0, $zero, ' + self.if_label + '\n'
        return mips_code


class StackGotoNode(InstructionNode):
    def __init__(self, local_to_jump):
        super(StackGotoNode, self).__init__("goto")
        self.local_to_jump = local_to_jump

    def to_mips(self):
        return "jr " + self.local_to_jump + "\n"


class PushaNode(InstructionNode):
    def __init__(self):
        super(PushaNode, self).__init__("push_all_registers")

    def to_mips(self):
        return PUSH_ALL_REGISTERS


class PopaNode(InstructionNode):
    def __init__(self):
        super(PopaNode, self).__init__("pop_all_registers")

    def to_mips(self):
        return POP_ALL_REGISTERS


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
        mips_code = ''
        mips_code += 'jal ' + self.func_name + '\n'
        mips_code += 'sw $v0, ' + str(-(self.value_index * 4 + 12)) + '($fp)\n'
        mips_code += 'addu $sp, $sp, ' + str(self.count * 4) + '\n'
        return mips_code


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
        mips_code = ''
        instance_increment = self.instance_index*4 + 12
        mips_code += 'lw $a3, ' + str(-instance_increment) + '($fp)\n'
        func_name_increment = self.func_name_index*4 + 12
        mips_code += 'lw $t4, ' + str(-func_name_increment) + '($fp)\n'
        mips_code += 'lw $a3, 8($a3)\n'
        mips_code += 'li $t0, 0\n'
        tableLoop_unique_v4 = uuidv4()
        mips_code += 'tableLoop' + tableLoop_unique_v4 + ':\n'
        mips_code += 'add $t3, $a3, $t0\n'
        mips_code += 'lw $t3, ($t3)\n'
        mips_code += 'move $a1, $t4\n'
        mips_code += 'move $a2, $t3\n'
        mips_code += 'li $a0, 1\n'
        compareLoop_unique_v4 = uuidv4()
        mips_code += 'compareLoop' + compareLoop_unique_v4 + ':\n'
        mips_code += 'lb $t1, ($a1)\n'
        mips_code += 'lb $t2, ($a2)\n'
        returnFalse_unique_v4 = uuidv4()
        mips_code += 'bne $t1, $t2, returnFalse' + returnFalse_unique_v4 + '\n'
        returnTrue_unique_v4 = uuidv4()
        mips_code += 'beqz $t1, returnTrue' + returnTrue_unique_v4 + '\n'
        mips_code += 'add $a1, $a1, 1\n'
        mips_code += 'add $a2, $a2, 1\n'
        mips_code += 'j compareLoop' + compareLoop_unique_v4 + '\n'
        mips_code += 'j returnTrue' + returnTrue_unique_v4 + '\n'
        mips_code += 'returnFalse' + returnFalse_unique_v4 + ':\n'
        mips_code += 'li $a0, 0\n'
        mips_code += 'returnTrue' + returnTrue_unique_v4 + ':\n'
        mips_code += 'add $t0, $t0, 8\n'
        mips_code += 'beqz $a0, tableLoop' + tableLoop_unique_v4 + '\n'
        mips_code += 'sub $a0, $t0, 4\n'
        mips_code += 'add $a0, $a3, $a0\n'
        mips_code += 'lw $a0, ($a0)\n'
        mips_code += 'jalr $a0\n'
        value_increment = self.value_index*4 + 12
        mips_code += 'sw $v0, ' + str(-value_increment) + '($fp)\n'
        mips_code += 'addu $sp, $sp, ' + str(self.count * 4) + '\n'
        return mips_code


class ArgNode(InstructionNode):
    def __init__(self, arg_name, arg_index):
        super(ArgNode, self).__init__("arg")
        self.arg_name = arg_name
        self.arg_index = arg_index

    @property
    def arg_name_index(self):
        return int(self.arg_name.split("_")[-1])

    def to_mips(self):
        mips_code = ''
        mips_code += 'lw $a0, ' + str(self.arg_index * 4) + '($fp)\n'
        mips_code += 'sw $a0, ' + str(-(self.arg_name_index * 4 + 12)) + '($fp)\n'
        return mips_code


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
        return uuidv4()

    def to_mips(self):
        instance_increment = self.instance_index*4 + 12
        value_increment = self.value_index*4 + 12
        mips_code = 'lw $a1, ' + str(-instance_increment) + '($fp)\n'
        mips_code += 'lw $a0, 4($a1)\n'
        mips_code += 'li $a2, 4\n'
        mips_code += 'multu $a0, $a2\n'
        mips_code += 'mflo $a0\n'
        mips_code += 'li $v0, 9\n'
        mips_code += 'syscall\n'
        mips_code += 'move $t0, $v0\n'
        mips_code += 'li $t1, 0\n'
        mips_code += 'lw $a0, 4($a1)\n'
        loop_unique_v4 = uuidv4()
        mips_code += 'loop' + loop_unique_v4 + ':' '\n'
        mips_code += 'lw $t2, ($a1)\n'
        brake_unique_v4 = uuidv4()
        mips_code += 'beq $t1, $a0, brake' + brake_unique_v4 + '\n'
        mips_code += 'sw $t2,($t0)\n'
        mips_code += 'add $a1, $a1, 4\n'
        mips_code += 'add $t0, $t0, 4\n'
        mips_code += 'add $t1, $t1, 1\n'
        mips_code += 'j loop' + loop_unique_v4 + '\n'
        mips_code += 'brake' + brake_unique_v4 + ':' + '\n'
        mips_code += 'sw $v0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


class ReturnNode(InstructionNode):
    def __init__(self, value=None):
        super(ReturnNode, self).__init__("return")
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split('_')[-1])

    def to_mips(self):
        mips_code = ""
        mips_code += "lw $v0, " + str(-(self.value_index * 4 + 12)) + '($fp)\n'
        mips_code += 'move $sp, $fp\n'
        mips_code += 'subu $a0, $sp, 4\n'
        mips_code += 'lw $fp, ($a0)\n'
        mips_code += 'subu $a0, $sp, 8\n'
        mips_code += 'lw $ra, ($a0)\n'
        mips_code += "jr $ra\n"
        return mips_code


class LoadNode(InstructionNode):
    def __init__(self, msg, value):
        super(LoadNode, self).__init__("load")
        self.msg = msg
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        mips_code = ""
        mips_code += "la $a0, " + self.msg + "\n"
        mips_code += "sw $a0, " + str(-(self.value_index * 4 + 12)) + "($fp)\n"
        return mips_code


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
        mips_code = ''
        str1_increment = self.str1_index*4 + 12
        mips_code += 'lw $a1, ' + str(-str1_increment) + '($fp)\n'
        str2_increment = self.str2_index*4 + 12
        mips_code += 'lw $a2, ' + str(-str2_increment) + '($fp)\n'
        mips_code += 'li $a0, 1\n'
        compareLoop_unique_v4 = uuidv4()
        mips_code += 'compareLoop' + compareLoop_unique_v4 + ':\n'
        mips_code += 'lb $t1, ($a1)\n'
        mips_code += 'lb $t2, ($a2)\n'
        returnFalse_unique_v4 = uuidv4()
        mips_code += 'bne $t1, $t2, returnFalse' + returnFalse_unique_v4 + '\n'
        returnTrue_unique_v4 = uuidv4()
        mips_code += 'beqz $t1, returnTrue' + returnTrue_unique_v4 + '\n'
        mips_code += 'add $a1, $a1, 1\n'
        mips_code += 'add $a2, $a2, 1\n'
        mips_code += 'j compareLoop' + compareLoop_unique_v4 + '\n'
        mips_code += 'j returnTrue' + returnTrue_unique_v4 + '\n'
        mips_code += 'returnFalse' + returnFalse_unique_v4 + ':\n'
        mips_code += 'li $a0, 0\n'
        mips_code += 'returnTrue' + returnTrue_unique_v4 + ':\n'
        value_increment = self.value_index*4 + 12
        mips_code += 'sw $a0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


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
        return uuidv4()

    def to_mips(self):
        mips_code = ''
        instance_name_increment = self.instance_name_index * 4 + 12
        mips_code += 'lw $a1, ' + str(-instance_name_increment) + '($fp)\n'
        mips_code += 'li $a0, 0\n'
        lengthLoop_unique_v4 = uuidv4()
        mips_code += 'lengthLoop' + lengthLoop_unique_v4 + ':\n'
        mips_code += 'lb $t2, ($a1)\n'
        brakeLengthLoop_unique_v4 = uuidv4()
        mips_code += 'beq $t2, $zero, brakeLengthLoop' + brakeLengthLoop_unique_v4 + '\n'
        mips_code += 'add $a0, $a0, 1\n'
        mips_code += 'add $a1, $a1, 1\n'
        mips_code += 'j lengthLoop' + lengthLoop_unique_v4 + '\n'
        mips_code += 'brakeLengthLoop' + brakeLengthLoop_unique_v4 + ':\n'
        value_increment = self.value_index * 4 + 12
        mips_code += 'sw $a0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


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
        return uuidv4()

    def to_mips(self):
        str1_increment = self.str1_index*4 + 12
        str2_increment = self.str2_index*4 + 12
        value_increment = self.value_index*4 + 12
        len1_increment = self.len1_index*4 + 12
        len2_increment = self.len2_index*4 + 12
        mips_code = ''
        mips_code += 'lw $a1, ' + str(-str1_increment) + '($fp)\n'
        mips_code += 'lw $a0, ' + str(-len1_increment) + '($fp)\n'
        mips_code += 'lw $t0, ' + str(-len2_increment) + '($fp)\n'
        mips_code += 'add $a0, $a0, $t0\n'
        mips_code += 'li $v0, 9\n'
        mips_code += 'syscall\n'
        mips_code += 'move $t0, $v0\n'
        loop_unique_v4 = uuidv4()
        mips_code += 'loop' + loop_unique_v4 + ':\n'
        mips_code += 'lb $t2, ($a1)\n'
        brake_unique_v4 = uuidv4()
        mips_code += 'beq $t2, $zero, brake' + brake_unique_v4 + '\n'
        mips_code += 'sb $t2,($t0)\n'
        mips_code += 'add $a1, $a1, 1\n'
        mips_code += 'add $t0, $t0, 1\n'
        mips_code += 'j loop' + loop_unique_v4 + '\n'
        mips_code += 'brake' + brake_unique_v4 + ':\n'
        mips_code += 'lw $a1, ' + str(-str2_increment) + '($fp)\n'
        loop2_unique_v4 = uuidv4()
        mips_code += 'loop2' + loop2_unique_v4 + ':\n'
        mips_code += 'lb $t2, ($a1)\n'
        brake2_unique_v4 = uuidv4()
        mips_code += 'beq $t2, $zero, brake2' + brake2_unique_v4 + '\n'
        mips_code += 'sb $t2,($t0)\n'
        mips_code += 'add $a1, $a1, 1\n'
        mips_code += 'add $t0, $t0, 1\n'
        mips_code += 'j loop2' + loop2_unique_v4 + '\n'
        mips_code += 'brake2' + brake2_unique_v4 + ':\n'
        mips_code += 'sb $zero, ($t0)\n'
        mips_code += 'sw $v0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


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
        return uuidv4()

    def to_mips(self):
        mips_code = ''
        text_increment = 4*self.text_index + 12
        mips_code += 'lw $a1, ' + str(-text_increment) + '($fp)\n'
        index_increment = 4*self.index_index + 12
        mips_code += 'lw $t0, ' + str(-index_increment) + '($fp)\n'
        mips_code += 'add $a1, $a1, $t0\n'
        length_increment = 4*self.length_index + 12
        mips_code += 'lw $a0, ' + str(-length_increment) + '($fp)\n'
        mips_code += 'add $a0, $a0, 1\n'
        mips_code += 'li $v0, 9\n'
        mips_code += 'syscall\n'
        mips_code += 'sub $a0, $a0, 1\n'
        mips_code += 'move $t0, $v0\n'
        mips_code += 'li $t1, 0\n'
        loop_unique_v4 = uuidv4()
        mips_code += 'loop' + loop_unique_v4 + ':\n'
        mips_code += 'lb $t2, ($a1)\n'
        brake_unique_v4 = uuidv4()
        mips_code += 'beq $t2, $zero, brake' + brake_unique_v4 + '\n'
        mips_code += 'beq $t1, $a0, brake' + brake_unique_v4 + '\n'
        mips_code += 'sb $t2,($t0)\n'
        mips_code += 'add $a1, $a1, 1\n'
        mips_code += 'add $t1, $t1, 1\n'
        mips_code += 'add $t0, $t0, 1\n'
        mips_code += 'j loop' + loop_unique_v4 + '\n'
        mips_code += 'brake' + brake_unique_v4 + ':\n'
        mips_code += 'sb $zero, ($t0)\n'
        value_increment = self.value_index*4 + 12
        mips_code += 'sw $v0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


class ParentOfNode(InstructionNode):
    def __init__(self, instance_name, value):
        super(ParentOfNode, self).__init__("parent_of")
        self.instance = instance_name
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        mips_code = "li $a1, 4\n"
        mips_code += "mulu $a0, $a0, $a1\n"
        mips_code += "la $a1, inheritance_table\n"
        mips_code += "addu $a1, $a1, $a0\n"
        mips_code += "lw $a0, ($a1)\n"
        increment = self.value_index*4 + 12
        mips_code += 'sw $v0, ' + str(-increment) + '($fp)\n'
        return mips_code


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
        mips_code = ''
        value_increment = self.value_index * 4 + 12
        mips_code += 'li $v0, 5\n'
        mips_code += 'syscall\n'
        mips_code += 'sw $v0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


class ReadStringNode(InstructionNode):
    def __init__(self, value):
        super(ReadStringNode, self).__init__("read_str")
        self.value = value

    @property
    def value_index(self):
        return int(self.value.split("_")[-1])

    def to_mips(self):
        value_increment = self.value_index * 4 + 12
        mips_code = ''
        mips_code += 'li $a0, 50\n'
        mips_code += 'li $v0, 9\n'
        mips_code += 'syscall\n'
        mips_code += 'move $a0, $v0\n'
        mips_code += 'li $a1, 50\n'
        mips_code += 'li $v0, 8\n'
        mips_code += 'syscall\n'
        mips_code += 'sw $a0, ' + str(-value_increment) + '($fp)\n'
        return mips_code


class PrintIntegerNode(InstructionNode):
    def __init__(self, int_addr):
        super(PrintIntegerNode, self).__init__("print_int")
        self.int_addr = int_addr

    @property
    def int_addr_index(self):
        return int(self.int_addr.split("_")[-1])

    def to_mips(self):
        int_addr_index = self.int_addr_index * 4 + 12
        mips_code = 'lw $a0, ' + str(-int_addr_index) + '($fp)\n'
        mips_code += 'li $v0, 1\n'
        mips_code += 'syscall\n'
        return mips_code


class PrintStringNode(InstructionNode):
    def __init__(self, str_addr):
        super(PrintStringNode, self).__init__("print_str")
        self.str_addr = str_addr

    def get_str_index(self):
        return int(self.str_addr.split("_")[-1])

    def to_mips(self):
        i = self.get_str_index() * 4 + 12
        mips_code = ''
        mips_code += 'lw $a0, ' + str(-i) + '($fp)\n'
        mips_code += 'li $v0, 4\n'
        mips_code += 'syscall\n'
        return mips_code


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
        mips_code = ''
        expr_increment = self.expr_index * 4 + 12
        mips_code += 'lw $a0, ' + str(-expr_increment) + '($fp)\n'
        mips_code += 'lw $a2, 12($a0)\n'
        mips_code += 'li $a1, 1\n'
        mips_code += 'sub $a2, $a1, $a2\n'
        mips_code += 'sw $a2, 12($a0)\n'
        return mips_code


class AbortNode(InstructionNode):
    def __init__(self, error_message):
        super(AbortNode, self).__init__("abort")
        self.error_message = error_message

    def to_mips(self):
        mips_code = ''
        mips_code += 'la $a0, ' + self.error_message + '\n'
        mips_code += 'li $v0, 4\n'
        mips_code += 'syscall\n'
        mips_code += 'li $v0, 10\n'
        mips_code += 'syscall\n'
        return mips_code
