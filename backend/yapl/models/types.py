import copy
import settings
from yapl.models.symbols import Symbol


class Attribute:
    def __init__(self, name: str, attribute_type: str):
        self.name = name
        self.attribute_type = attribute_type

    def __eq__(self, other):
        return self.name == other.name


class SimpleMethod:
    def __init__(self, name: str, return_type: str, arguments: list):
        self.name = name
        self.return_type = return_type
        self.arguments = arguments

    def __eq__(self, other):
        return self.arguments == other.arguments


class Method:
    def __init__(self, name, type, scope, length=0):
        self.name = name
        self.type = type
        self.parameters = dict()
        self.scope = scope
        self.length = length

    def add_param(self, name, type):
        error = None
        parameter = Symbol(name, type, self)
        if name in self.parameters:
            error = "el parámetro {} esta declarado más de una vez".format(name)
        self.parameters[name] = parameter
        return error

    def get_param(self, name):
        if name in self.parameters.keys():
            parameter: Symbol = self.parameters[name]
            return parameter
        return None

    def get_param_by_pos(self, pos):
        if pos < len(self.parameters.values()):
            parameter: Symbol = list(self.parameters.values())[pos]
            return parameter
        return None


class Type:
    def __init__(self, name: str, parent="Object"):
        self.parent = parent
        self.name = name
        self.attributes = {}
        self.methods = {}

    def get_attribute(self, name: str) -> Attribute:
        return self.attributes[name]

    def get_method(self, name: str) -> SimpleMethod:
        return self.methods[name]

    def define_attribute(self, name: str, _type: str):
        self.attributes[name] = Attribute(name, _type)

    def define_method(self, name: str, return_type, arguments, arguments_types):
        l = [
            Attribute(arguments[pos], arguments_types[pos])
            for pos in range(len(arguments))
        ]
        self.methods[name] = SimpleMethod(
            name=name, return_type=return_type, arguments=l
        )


class ContextType:
    def __init__(self, parent=None, types={}, symbols={}):
        self.types = types
        self.symbols = symbols
        self.parent = parent

    def get_type(self, type_name: str) -> Type:
        return self.types[type_name] if type_name in self.types else None

    def get_type_for(self, symbol: str) -> Type:
        return self.symbols[symbol] if symbol in self.symbols else None

    def create_child_context(self):
        return ContextType(self, self.types, self.symbols)

    def define_symbol(self, symbol: str, type_symbol: Type):
        self.symbols[symbol] = type_symbol

    def create_type(self, name: str):
        self.types[name] = Type(name)

    def parents_of_type(self, types: Type) -> list:
        solve = [types.name]
        p = types.parent
        while p != "Object":
            solve.append(p)
            p = self.get_type(p).parent
        if solve[len(solve) - 1] != "Object":
            solve.append("Object")
        return solve

    def heir(self, type1: Type, type2: Type):
        return type2.name in self.parents_of_type(type1) if type1 and type2 else None


class Class:
    def __init__(self, id, parent, length=None):
        self.id = id
        self.parent = parent
        self.length = length
        self.methods = dict()
        self.attributes = dict()
        self.active_method = None

    def add_attr(self, name, type):
        error = None
        symbol = Symbol(name, type, self)
        if name in self.attributes:
            error = "el atributo {} esta declarado más de una vez".format(name)
        self.attributes[name] = symbol
        return error

    def add_method(self, name, type):
        error = None
        symbol = Method(name, type, self)
        if name in self.methods:
            error = "el método {} esta declarado más de una vez".format(name)
        self.active_method = name
        self.methods[name] = symbol
        return error

    def add_param(self, name, type):
        active_method: Method = self.methods[self.active_method]
        return active_method.add_param(name, type)


"""
 Types table
"""


class TypesTable:
    def __init__(self):
        self.class_list = dict()
        self.active_class = None
        self.initialize_builtin_types()

    def initialize_builtin_types(self):
        """Classes"""
        object_class = Class("Object", None, settings.ELEMENTAL_TYPES_SIZES["Object"])
        io_class = Class("IO", "Object", settings.ELEMENTAL_TYPES_SIZES["IO"])
        integer_class = Class("Int", "Object", settings.ELEMENTAL_TYPES_SIZES["Int"])
        str_class = Class("String", "Object", settings.ELEMENTAL_TYPES_SIZES["String"])
        bool_class = Class("Bool", "Object", settings.ELEMENTAL_TYPES_SIZES["Bool"])

        object_class.add_method("abort", "Object")
        object_class.add_method("type_name", "String")
        object_class.add_method("copy", "SELF_TYPE")
        self.class_list[object_class.id] = object_class

        """ Methods & Params """
        io_class.add_method("out_string", "SELF_TYPE")
        io_class.add_param("x", "String")
        io_class.add_method("out_int", "SELF_TYPE")
        io_class.add_param("x", "Int")
        io_class.add_method("in_string", "String")
        io_class.add_method("in_int", "Int")
        self.class_list[io_class.id] = io_class

        self.class_list[integer_class.id] = integer_class

        str_class.add_method("length", "Int")
        str_class.add_method("concat", "String")
        str_class.add_param("s", "String")
        str_class.add_method("substr", "String")
        str_class.add_param("pos", "Int")
        str_class.add_param("l", "Int")
        self.class_list[str_class.id] = str_class

        self.class_list[bool_class.id] = bool_class

    def calculate_classes_sizes(self):
        for value in self.class_list.values():
            c: Class = value
            if not c.length:
                length = 0
                if c.parent:
                    parent_len = self.class_list[c.parent].length
                    if parent_len:
                        length += parent_len
                for a in c.attributes.values():
                    attribute: Symbol = a
                    attr_len = self.class_list[attribute.type].length
                    if attr_len:
                        attribute.length = attr_len
                        attribute.offset = length
                        length += attr_len
                for m in c.methods.values():
                    method: Method = m
                    method_len = self.class_list[
                        c.id if method.type == "SELF_TYPE" else method.type
                    ].length
                    if method_len:
                        method.length = method_len
                    for p in method.parameters.values():
                        parameter: Symbol = p
                        param_len = self.class_list[parameter.type].length
                        if param_len:
                            parameter.length = param_len
                            parameter.offset = length
                            length += param_len
                c.length = length

    def add_class(self, id, parent="Object"):
        error = None
        if id in self.class_list.keys():
            error = "la clase {} esta declarada más de una vez".format(id)
        else:
            c = Class(id, parent)
            self.active_class = id
            self.class_list[id] = c
        return error

    def get_class(self, id=None):
        _id = id or self.active_class
        if _id in self.class_list.keys():
            c: Class = self.class_list[_id]
            return c
        return None

    def has_inheritance_cycle(self, id, class_names: list):
        c: Class = self.get_class(id)
        if c:
            if c.id not in class_names:
                class_names.append(c.id)
                if c.parent is not None:
                    return self.has_inheritance_cycle(c.parent, class_names)
                else:
                    return False
            else:
                return True
        return False

    def get_parents(self, class_name, parents: list):
        if not self.has_inheritance_cycle(class_name, []):
            c: Class = self.get_class(class_name)
            if c:
                if c.parent is not None:
                    parents.append(c.parent)
                    return self.get_parents(c.parent, parents)
            return parents
        return []

    def get_attr(self, class_name, attr_name):
        if not self.has_inheritance_cycle(class_name, []):
            c: Class = self.get_class(class_name)
            if c:
                if attr_name in c.attributes:
                    attribute: Symbol = c.attributes[attr_name]
                    return attribute
                elif c.parent is not None:
                    attribute: Symbol = self.get_attr(c.parent, attr_name)
                    return attribute
                else:
                    return None
        return None

    def get_method(self, class_name, method_name, root=True):
        if not self.has_inheritance_cycle(class_name, []):
            c: Class = self.get_class(class_name)
            if c:
                if method_name in c.methods.keys():
                    method: Method = c.methods[method_name]
                    if root and method and method.type == "SELF_TYPE":
                        method = copy.deepcopy(method)
                        method.type = c.id
                    return method
                elif c.parent is not None:
                    method: Method = self.get_method(c.parent, method_name, False)
                    if root and method and method.type == "SELF_TYPE":
                        method = copy.deepcopy(method)
                        method.type = c.id
                    return method
                else:
                    return None
        return None

    def find_class_method(self, class_name, method_name, target_term, root=True):
        if not self.has_inheritance_cycle(class_name, []):
            c: Class = self.get_class(class_name)
            if c:
                if method_name in c.methods.keys() and class_name == target_term:
                    method: Method = c.methods[method_name]
                    if root and method and method.type == "SELF_TYPE":
                        method = copy.deepcopy(method)
                        method.type = c.id
                    return method
                elif c.parent is not None:
                    method: Method = self.find_class_method(
                        c.parent, method_name, target_term, False
                    )
                    if root and method and method.type == "SELF_TYPE":
                        method = copy.deepcopy(method)
                        method.type = c.id
                    return method
                else:
                    return None
        return None

    def get_symbol(self, class_name, method_name, symbolName):
        if not self.has_inheritance_cycle(class_name, []):
            if self.get_class(class_name):
                c: Class = self.get_class(class_name)
                if method_name:
                    if method_name in c.methods.keys():
                        method: Method = c.methods[method_name]
                        parameter = method.get_param(symbolName)
                        if parameter:
                            return parameter
                if symbolName in c.attributes.keys():
                    return c.attributes[symbolName]
                if c.parent is not None:
                    return self.get_symbol(c.parent, None, symbolName)
                else:
                    return None
        return None

    def get_all_symbols(self, class_name, symbols):
        if not self.has_inheritance_cycle(class_name, []):
            if self.get_class(class_name):
                c: Class = self.get_class(class_name)
                for a in c.attributes.values():
                    attribute: Symbol = a
                    symbols.append(attribute)
                if c.parent is not None:
                    return self.get_all_symbols(c.parent, symbols=symbols)
        return symbols

    def __repr__(self):
        return f"Active: {self.active_class} \n Classes: {self.class_list}"
