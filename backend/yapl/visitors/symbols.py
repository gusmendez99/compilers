import settings
from uuid import uuid4
from yapl.models.symbols import SymbolsTable
from yapl.grammar.YAPL2Parser import YAPLParser as YAPL2Parser
from yapl.grammar.YAPL2Visitor import YAPLVisitor as YAPL2Visitor


class SymbolsVisitor(YAPL2Visitor):
    def __init__(self, types_table):
        super().__init__()
        self.types_table: TypesTable = types_table
        self.symbol_table = SymbolsTable(types_table)
        self.errors = list()

    def aggregateResult(self, aggregate, _next):
        if aggregate and _next:
            if type(aggregate) is list:
                aggregate.append(_next)
            else:
                aggregate = [aggregate, _next]
        return aggregate or _next

    # Visit a parse tree produced by YAPL2Parser#program.
    def visitProgram(self, ctx: YAPL2Parser.ProgramContext):
        self.visitChildren(ctx)
        return self.symbol_table, self.errors

    # Visit a parse tree produced by YAPL2Parser#class_exp.
    def visitClass_exp(self, ctx: YAPL2Parser.Class_expContext):
        id = str(ctx.TYPE()[0])
        if ctx.INHERITS():
            parentId = str(ctx.TYPE()[1])
            if self.types_table.get_class(parentId) is None:
                self.add_error(
                    ctx.start.line, "la clase {} no está definida".format(parentId)
                )
            elif self.types_table.has_inheritance_cycle(id, []):
                self.add_error(
                    ctx.start.line,
                    "la relación padre-hijo de la clase {} tiene un ciclo".format(id),
                )

        self.symbol_table.push_scope(id, is_class_expr=True)
        self.visitChildren(ctx)
        self.symbol_table.pop_scope()

    # Visit a parse tree produced by YAPL2Parser#attribute.
    def visitAttribute(self, ctx: YAPL2Parser.AttributeContext):
        self.visitChildren(ctx)

    # Visit a parse tree produced by YAPL2Parser#declaration.
    def visitDeclaration(self, ctx: YAPL2Parser.DeclarationContext):
        name = str(ctx.ID())
        type = str(ctx.TYPE())
        active_class = self.types_table.get_class(self.symbol_table.get_active_class())
        if self.types_table.get_attr(active_class.parent, name):
            self.add_error(
                ctx.start.line, "La variable {} no se puede re-definir".format(name)
            )
        valueType = self.visitChildren(ctx)
        if valueType and not self.compare_types(type, valueType):
            self.add_error(
                ctx.start.line,
                "La variable {} de tipo {} se le esta asignando un valor de tipo {}".format(
                    name, type, valueType
                ),
            )
        if not self.types_table.get_class(type):
            self.add_error(ctx.start.line, "la clase {} no está definida".format(type))

        self.symbol_table.add_symbol(name, type)

    # Visit a parse tree produced by YAPL2Parser#method.
    def visitMethod(self, ctx: YAPL2Parser.MethodContext):
        name = str(ctx.ID())
        self.symbol_table.push_scope(name)
        returnType = self.visitChildren(ctx)
        self.symbol_table.pop_scope()
        methodType = self.types_table.get_method(
            self.symbol_table.get_active_class(), name
        ).type
        if not self.compare_types(methodType, returnType):
            self.add_error(
                ctx.start.line,
                "el método {} de la clase {} es de tipo {} y esta retornando tipo {}".format(
                    name, self.symbol_table.get_active_class(), methodType, returnType
                ),
            )

    # Visit a parse tree produced by YAPL2Parser#formal.
    def visitFormal(self, ctx: YAPL2Parser.FormalContext):
        name = str(ctx.ID())
        type = str(ctx.TYPE())
        if not self.types_table.get_class(type):
            self.add_error(ctx.start.line, "la clase {} no está definida".format(type))
        self.symbol_table.add_symbol(name, type)

    # Visit a parse tree produced by YAPL2Parser#new.
    def visitNew(self, ctx: YAPL2Parser.NewContext):
        class_name = str(ctx.TYPE())
        if not self.types_table.get_class(class_name):
            self.add_error(
                ctx.start.line, "la clase {} no está definida".format(class_name)
            )
        return class_name

    # Visit a parse tree produced by YAPL2Parser#negInteger.
    def visitNegInteger(self, ctx: YAPL2Parser.NegIntegerContext):
        type = self.visitChildren(ctx)
        if type == "Int":
            return type
        else:
            self.add_error(
                ctx.start.line,
                "el operador ~ espera tipo Int y está recibiendo '{}' de tipo {}".format(
                    ctx.children[1].getText(), type
                ),
            )
            return "Error"

    # Visit a parse tree produced by YAPL2Parser#string.
    def visitString(self, ctx: YAPL2Parser.StringContext):
        return "String"

    # Visit a parse tree produced by YAPL2Parser#blocks.
    def visitBlocks(self, ctx: YAPL2Parser.BlocksContext):
        values = self.visitChildren(ctx)
        if type(values) == list:
            return values[-1]
        return values

    # Visit a parse tree produced by YAPL2Parser#isvoid.
    def visitIsvoid(self, ctx: YAPL2Parser.IsvoidContext):
        self.visitChildren(ctx)
        return "Bool"

    # Visit a parse tree produced by YAPL2Parser#assignment.
    def visitAssignment(self, ctx: YAPL2Parser.AssignmentContext):
        name = str(ctx.ID())
        symbol = self.symbol_table.get_symbol(name)
        valueType = self.visitChildren(ctx)
        if symbol:
            if not self.compare_types(symbol.type, valueType):
                self.add_error(
                    ctx.start.line,
                    "La variable {} de tipo {} se le esta asignando un valor de tipo {}".format(
                        name, symbol.type, valueType
                    ),
                )
                return "Error"
        else:
            self.add_error(
                ctx.start.line, "La variable {} no está definida".format(name)
            )
            return "Error"
        return symbol.type

    # Visit a parse tree produced by YAPL2Parser#false.
    def visitFalse(self, ctx: YAPL2Parser.FalseContext):
        return "Bool"

    # Visit a parse tree produced by YAPL2Parser#integer.
    def visitInteger(self, ctx: YAPL2Parser.IntegerContext):
        return "Int"

    # Visit a parse tree produced by YAPL2Parser#while.
    def visitWhile(self, ctx: YAPL2Parser.WhileContext):
        conditionType, _ = self.visitChildren(ctx)
        if not self.compare_types("Bool", conditionType):
            self.add_error(
                ctx.start.line,
                "El ciclo while espera una expresión de tipo Bool y está recibiendo tipo {}".format(
                    conditionType
                ),
            )
            return "Error"
        else:
            return "Object"

    # Visit a parse tree produced by YAPL2Parser#add_sub.
    def visitAdd_sub(self, ctx: YAPL2Parser.Add_subContext):
        term1, term2 = self.visitChildren(ctx)
        if not self.compare_types("Int", term1):
            self.add_error(
                ctx.start.line,
                "para {} las dos variables tienen que ser de tipo Int ({} es de tipo {})".format(
                    "sumar" if ctx.children[1].getText() == "+" else "restar",
                    ctx.children[0].getText(),
                    term1,
                ),
            )
            return "Error"
        if not self.compare_types("Int", term2):
            self.add_error(
                ctx.start.line,
                "para {} las dos variables tienen que ser de tipo Int ({} es de tipo {})".format(
                    "sumar" if ctx.children[1].getText() == "+" else "restar",
                    ctx.children[2].getText(),
                    term2,
                ),
            )
            return "Error"
        return "Int"

    # Visit a parse tree produced by YAPL2Parser#dispatch.
    def visitDispatch(self, ctx: YAPL2Parser.DispatchContext):
        result = self.visitChildren(ctx)
        if type(result) == list:
            class_name, *params = result
        else:
            class_name, params = result, None
        method_name = str(ctx.ID())
        method = (
            self.types_table.find_class_method(class_name, method_name, str(ctx.TYPE()))
            if ctx.TYPE()
            else self.types_table.get_method(class_name, method_name)
        )
        if method:
            error = False
            if params:
                if len(params) != len(method.parameters):
                    error = True
                    self.add_error(
                        ctx.start.line,
                        "La cantidad de parámetros del método {} no coincide".format(
                            method_name
                        ),
                    )
                for i in range(len(params)):
                    parameter = method.get_param_by_pos(i)
                    if parameter:
                        if not self.compare_types(parameter.type, params[i]):
                            error = True
                            self.add_error(
                                ctx.start.line,
                                "El parámetro {} tiene que ser de tipo {} y esta recibiendo un tipo {}".format(
                                    parameter.name, parameter.type, params[i]
                                ),
                            )
            else:
                if len(method.parameters) > 0:
                    error = True
                    self.add_error(
                        ctx.start.line,
                        "La cantidad de parámetros del método {} no coincide".format(
                            method_name
                        ),
                    )
            if not error:
                return method.type
        else:
            self.add_error(
                ctx.start.line, "El método {} no está definido".format(method_name)
            )
        return "Error"

    # Visit a parse tree produced by YAPL2Parser#star_division.
    def visitStar_division(self, ctx: YAPL2Parser.Star_divisionContext):
        term1, term2 = self.visitChildren(ctx)
        if not self.compare_types("Int", term1):
            self.add_error(
                ctx.start.line,
                "para {} las dos variables tienen que ser de tipo Int ({} es de tipo {})".format(
                    "multiplicar" if ctx.children[1].getText() == "*" else "dividir",
                    ctx.children[0].getText(),
                    term1,
                ),
            )
            return "Error"
        if not self.compare_types("Int", term2):
            self.add_error(
                ctx.start.line,
                "para {} las dos variables tienen que ser de tipo Int ({} es de tipo {})".format(
                    "multiplicar" if ctx.children[1].getText() == "*" else "dividir",
                    ctx.children[2].getText(),
                    term2,
                ),
            )
            return "Error"
        return "Int"

        # Visit a parse tree produced by YAPL2Parser#not.

    def visitNot(self, ctx: YAPL2Parser.NotContext):
        type = self.visitChildren(ctx)
        if type == "Bool":
            return "Bool"
        else:
            self.add_error(
                ctx.start.line,
                "el operador not espera tipo Bool y está recibiendo '{}' de tipo {}".format(
                    ctx.children[1].getText(), type
                ),
            )
            return "Error"

    # Visit a parse tree produced by YAPL2Parser#condition.
    def visitCondition(self, ctx: YAPL2Parser.ConditionContext):
        term1, term2 = self.visitChildren(ctx)
        if not self.compare_types("Int", term1):
            self.add_error(
                ctx.start.line,
                "para operaciones de comparación las dos variables tienen que ser de tipo Int ({} es de tipo {})".format(
                    ctx.children[0].getText(), term1
                ),
            )
            return "Error"
        if not self.compare_types("Int", term2):
            self.add_error(
                ctx.start.line,
                "para operaciones de comparación las dos variables tienen que ser de tipo Int ({} es de tipo {})".format(
                    ctx.children[2].getText(), term2
                ),
            )
            return "Error"
        return "Bool"

    # Visit a parse tree produced by YAPL2Parser#true.
    def visitTrue(self, ctx: YAPL2Parser.TrueContext):
        return "Bool"

    # Visit a parse tree produced by YAPL2Parser#let.
    def visitLet(self, ctx: YAPL2Parser.LetContext):
        self.symbol_table.push_scope(uuid4())
        *_, type = self.visitChildren(ctx)
        self.symbol_table.pop_scope()
        return type

    # Visit a parse tree produced by YAPL2Parser#id.
    def visitId(self, ctx: YAPL2Parser.IdContext):
        name = str(ctx.ID())
        symbol = self.symbol_table.get_symbol(name)
        if symbol:
            return symbol.type
        else:
            self.add_error(
                ctx.start.line, "La variable {} no está definida".format(name)
            )
            return "Error"

    # Visit a parse tree produced by YAPL2Parser#if.
    def visitIf(self, ctx: YAPL2Parser.IfContext):
        conditionType, exprType1, exprType2 = self.visitChildren(ctx)
        if not self.compare_types("Bool", conditionType):
            self.add_error(
                ctx.start.line,
                "La condicional if espera una expresión de tipo Bool y está recibiendo tipo {}".format(
                    conditionType
                ),
            )
            return "Error"
        if exprType1 == exprType2:
            return exprType1
        else:
            parents = self.types_table.get_parents(exprType2, [exprType2])
            for parent in self.types_table.get_parents(exprType1, [exprType1]):
                if parent in parents:
                    return parent
        return "Error"

    # Visit a parse tree produced by YAPL2Parser#call.
    def visitCall(self, ctx: YAPL2Parser.CallContext):
        params = self.visitChildren(ctx)
        method_name = str(ctx.ID())
        method = self.types_table.get_method(
            self.symbol_table.get_active_class(), method_name
        )
        if method:
            error = False
            if params:
                if type(params) == str:
                    params = [params]
                if len(params) != len(method.parameters):
                    error = True
                    self.add_error(
                        ctx.start.line,
                        "La cantidad de parámetros del método {} no coincide".format(
                            method_name
                        ),
                    )
                for i in range(len(params)):
                    parameter = method.get_param_by_pos(i)
                    if parameter:
                        if not self.compare_types(parameter.type, params[i]):
                            error = True
                            self.add_error(
                                ctx.start.line,
                                "El parámetro {} tiene que ser de tipo {} y esta recibiendo un tipo {}".format(
                                    parameter.name, parameter.type, params[i]
                                ),
                            )
            else:
                if len(method.parameters) > 0:
                    error = True
                    self.add_error(
                        ctx.start.line,
                        "La cantidad de parámetros del método {} no coincide".format(
                            method_name
                        ),
                    )
            if not error:
                return method.type
        else:
            self.add_error(
                ctx.start.line, "El método {} no está definido".format(method_name)
            )
        return "Error"

    # Visit a parse tree produced by YAPL2Parser#parenthesis.
    def visitParenthesis(self, ctx: YAPL2Parser.ParenthesisContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by YAPL2Parser#let_declaration.
    def visitLet_declaration(self, ctx: YAPL2Parser.Let_declarationContext):
        name = str(ctx.ID())
        type = str(ctx.TYPE())
        self.symbol_table.add_symbol(name, type)
        valueType = self.visitChildren(ctx)
        if valueType and not self.compare_types(type, valueType):
            self.add_error(
                ctx.start.line,
                "La variable {} de tipo {} se le esta asignando un valor de tipo {}".format(
                    name, type, valueType
                ),
            )
            return "Error"
        if not self.types_table.get_class(type):
            self.add_error(ctx.start.line, "la clase {} no está definida".format(type))
            return "Error"
        return type

    def compare_types(self, type1: str, type2: str):
        return (
            # Son tipos iguales
            type1 == type2
            # Casteo implícito (Bool, Int)
            or (type1 in ["Int", "Bool"] and type2 in ["Int", "Bool"])
            # Casteo implícito por herencia
            or type1 in self.types_table.get_parents(type2, parents=[])
        )

    def add_error(self, line, error):
        if error:
            self.errors.append("Error en la linea {}: {}".format(line, error))
