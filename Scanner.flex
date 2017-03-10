/*
 * 
 */

package fr.ul.miage.exemple.generated;
import java_cup.runtime.Symbol;

%%

/* options */
%line
%public
%cup

/* macros */

/* Pony, content, mainFunction, instruction, ifStatement, whileLoopStatement, 
forLoopStatement, affectationStatement,incrementStatement, printStatement,
booleanExpression, function, return, wellTypedObject, expression, 
decrementStatement, operator, booleanOperator */

FIN = "\n"


%%

/* regles */

/* "terminalReconnu"   { return new Symbol(sym.terminalReconnu);} */
{ return new Symbol(sym.);}
// exemples
"\["           	{ return new Symbol(sym.CO);}
"\]"         	{ return new Symbol(sym.CF);}
" "				{;}
"\{"         	{ return new Symbol(sym.ACO);}
"\}"         	{ return new Symbol(sym.ACF);}
"("         	{ return new Symbol(sym.PO);}
")"         	{ return new Symbol(sym.PF);}
"RLStatement"	{ return new Symbol(sym.recognitionLanguageStatement);}
"if"			{ return new Symbol(sym.ifIdentifier);}
"return"		{ return new Symbol(returnIdentifier);}
"Rtype"			{ return new Symbol(sym.ReturnType);}
"Fname"			{ return new Symbol(sym.functionName);}
"main"			{ return new Symbol(sym.mainStatement);}
"void"			{ return new Symbol(sym.void);}
"TEXT"			{ return new Symbol(sym.text);}
"for"			{ return new Symbol(sym.forIdentifier);}
"while"			{ return new Symbol(sym.whileIdentifier);}
"var"			{ return new Symbol(sym.varName);}
"->"			{ return new Symbol(sym.affectationIdentifier);}
"text"			{ return new Symbol(sym.textIdentifier);}
"bool"			{ return new Symbol(sym.booleanIdentifier);}
"num"			{ return new Symbol(sym.numberIdentifier);}
"++"			{ return new Symbol(sym.incrementIdentifier);}
"--"			{ return new Symbol(sym.decrementIdentifier);}
"print"			{ return new Symbol(sym.printIdentifier);}
"+"				{ return new Symbol(sym.additionOperator);}
"-"				{ return new Symbol(sym.substractionOperator);}
"*"				{ return new Symbol(sym.multiplicationOperator);}
"\/"			{ return new Symbol(sym.divisionOperator);}
"=="			{ return new Symbol(sym.equalIdentifier);}
">"				{ return new Symbol(sym.higherThanIdentifier);}
">="			{ return new Symbol(sym.higherEqualThanIdentifier);}
"<"				{ return new Symbol(sym.lesserThanIdentifier);}
"<="			{ return new Symbol(sym.lesserEqualThanIdentifier);}
"<>"			{ return new Symbol(sym.differentIdentifier);}
"|"				{ return new Symbol(sym.orIdentifier);}
"&"				{ return new Symbol(sym.andIdentifier);}
"||"			{ return new Symbol(sym.xorIdentifier);}
"FIN"			{ return new Symbol(sym.endLineStatement);}
"."				{ return new Symbol(sym.EOFStatement);}


