// Generated from ./YAPL/YAPL.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link YAPLParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface YAPLVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link YAPLParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(YAPLParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link YAPLParser#klass}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitKlass(YAPLParser.KlassContext ctx);
	/**
	 * Visit a parse tree produced by the {@code method}
	 * labeled alternative in {@link YAPLParser#feature}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMethod(YAPLParser.MethodContext ctx);
	/**
	 * Visit a parse tree produced by the {@code attr}
	 * labeled alternative in {@link YAPLParser#feature}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAttr(YAPLParser.AttrContext ctx);
	/**
	 * Visit a parse tree produced by {@link YAPLParser#formal}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFormal(YAPLParser.FormalContext ctx);
	/**
	 * Visit a parse tree produced by {@link YAPLParser#let_formal}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLet_formal(YAPLParser.Let_formalContext ctx);
	/**
	 * Visit a parse tree produced by the {@code minus}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMinus(YAPLParser.MinusContext ctx);
	/**
	 * Visit a parse tree produced by the {@code dispatch}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDispatch(YAPLParser.DispatchContext ctx);
	/**
	 * Visit a parse tree produced by the {@code str_const}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStr_const(YAPLParser.Str_constContext ctx);
	/**
	 * Visit a parse tree produced by the {@code mul}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMul(YAPLParser.MulContext ctx);
	/**
	 * Visit a parse tree produced by the {@code isvoid}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIsvoid(YAPLParser.IsvoidContext ctx);
	/**
	 * Visit a parse tree produced by the {@code selfdispatch}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSelfdispatch(YAPLParser.SelfdispatchContext ctx);
	/**
	 * Visit a parse tree produced by the {@code while}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhile(YAPLParser.WhileContext ctx);
	/**
	 * Visit a parse tree produced by the {@code div}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDiv(YAPLParser.DivContext ctx);
	/**
	 * Visit a parse tree produced by the {@code neg}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNeg(YAPLParser.NegContext ctx);
	/**
	 * Visit a parse tree produced by the {@code paren}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParen(YAPLParser.ParenContext ctx);
	/**
	 * Visit a parse tree produced by the {@code not}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNot(YAPLParser.NotContext ctx);
	/**
	 * Visit a parse tree produced by the {@code lessThan}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLessThan(YAPLParser.LessThanContext ctx);
	/**
	 * Visit a parse tree produced by the {@code let}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLet(YAPLParser.LetContext ctx);
	/**
	 * Visit a parse tree produced by the {@code block}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(YAPLParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by the {@code id}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitId(YAPLParser.IdContext ctx);
	/**
	 * Visit a parse tree produced by the {@code if}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIf(YAPLParser.IfContext ctx);
	/**
	 * Visit a parse tree produced by the {@code case}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCase(YAPLParser.CaseContext ctx);
	/**
	 * Visit a parse tree produced by the {@code lessThanOrEqualTo}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLessThanOrEqualTo(YAPLParser.LessThanOrEqualToContext ctx);
	/**
	 * Visit a parse tree produced by the {@code add}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAdd(YAPLParser.AddContext ctx);
	/**
	 * Visit a parse tree produced by the {@code new}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNew(YAPLParser.NewContext ctx);
	/**
	 * Visit a parse tree produced by the {@code bool_true}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBool_true(YAPLParser.Bool_trueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code eq}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEq(YAPLParser.EqContext ctx);
	/**
	 * Visit a parse tree produced by the {@code int_const}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInt_const(YAPLParser.Int_constContext ctx);
	/**
	 * Visit a parse tree produced by the {@code bool_false}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBool_false(YAPLParser.Bool_falseContext ctx);
	/**
	 * Visit a parse tree produced by the {@code assign}
	 * labeled alternative in {@link YAPLParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssign(YAPLParser.AssignContext ctx);
}