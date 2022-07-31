"""
 Base Symbol & Scope
"""
class Scope:
    @abstractmethod
    def add(self, sym):
        pass

    @abstractmethod
    def lookup(self, str_sym):
        pass

    @abstractmethod
    def get_parent(self):
        pass


class Symbol:
    def __init__(self, name):
        self.name = name

    def __str__(self):
        return self.name


"""
 Specific Symbols
"""

class IdSymbol(Symbol):
    def __init__(self, name):
        self.name = name
        self.type = None

class LetSymbol(Scope):
    def __init__(self, parent):
        self.parent = parent
        self.vars = dict()

    def add(self, sym):
        self.vars[sym.name] = sym
        return True

    def lookup(self, str_sym):
        symbol = self.vars[str_sym] if str_sym in self.vars else None
        if symbol == None:
            return self.get_parent().lookup(str_sym)

        return symbol

    def get_parent(self):
        return self.parent



"""
 Specific Scopes
"""

class GlobalScope(Scope):
    def __init__(self):
        self.symbols = dict()

    def add(self, sym):
        if sym.name in self.symbols:
            return False

        self.symbols[sym.name] = sym
        return True
    
    def lookup(self, str_sym):
        return self.symbols[str_sym] if str_sym in self.symbols else None

    def get_parent(self):
        return None

    def __str__(self):
        return list(self.symbols.values())



class CaseScope(Scope):
    def __init__(self, parent):
        self.parent = parent
        self.var = None

    def add(self, sym):
        if type(sym) != IdSymbol:
            return False

        self.var = sym
        return True
    
    def lookup(self, str_sym):
        if self.var.name == str_sym:
            return var
        
        return self.parent.lookup(str_sym)
    
    def get_parent(self):
        return self.parent