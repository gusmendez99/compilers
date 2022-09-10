import settings
from dataclasses import dataclass

"""
 Auxiliar symbol class & table
"""


@dataclass
class Symbol:
    name: str
    type: str
    scope: str
    length: int = 0
    offset: int = 0


class SymbolsTable:
    def __init__(self, types_table):
        self.types_table = types_table
        self.scope = list()
        self.symbols = list()

    def add_symbol(self, name, type):
        found_symbol = self.types_table.get_symbol(
            self.get_active_class(), self.get_active_method(), name
        )
        if found_symbol:
            symbol = Symbol(
                name, type, self.scope[-1], found_symbol.length, found_symbol.offset
            )
        else:
            type_class = self.types_table.get_class(type)
            if (
                self.get_active_class() in self.types_table.class_list
                and self.types_table.class_list[self.get_active_class()].length
            ):
                offset = self.types_table.class_list[self.get_active_class()].length
                self.types_table.class_list[
                    self.get_active_class()
                ].length += type_class.length
                symbol = Symbol(name, type, self.scope[-1], type_class.length, offset)
            else:
                symbol = Symbol(name, type, self.scope[-1])
        self.symbols.append(symbol)

    def push_scope(self, scope, is_class_expr=False):
        self.scope.append(scope)
        if is_class_expr:
            parent = self.types_table.class_list[scope].parent
            length = self.types_table.class_list[scope].length
            symbol = Symbol("self", scope, scope, length)
            self.symbols.append(symbol)
            if parent:
                symbols = self.types_table.get_all_symbols(parent, [])
                self.symbols += symbols

    def pop_scope(self):
        self.symbols = [
            symbol for symbol in self.symbols if symbol.scope != self.scope[-1]
        ]
        self.scope.pop()

    def get_active_class(self):
        return self.scope[0] if len(self.scope) > 0 else None

    def get_active_method(self):
        return self.scope[1] if len(self.scope) > 1 else None

    def get_symbol(self, name):
        symbol_names = [symbol.name for symbol in self.symbols]
        if name in symbol_names:
            symbol: Symbol = self.symbols[
                next(
                    i
                    for i in reversed(range(len(symbol_names)))
                    if symbol_names[i] == name
                )
            ]
            return symbol
        return None

    def __repr__(self):
        return f"Scope: {self.scope} \n Symbols: {self.symbols}"
