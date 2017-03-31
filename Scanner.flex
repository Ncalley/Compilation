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

FIN = <3
MOINS = -[^-]
name = ([a-zA-Z]+[0-9]*)+
NUM = -?[0-9]+(\.[0-9]+)?
TEXT = \'.*[^\']\'
BOOL = (true)|(false)
NULL = \n|[ \t]|\r|\r\n

%%

/* regles */

/* "terminalReconnu"   { return new Symbol(sym.terminalReconnu);} */
{ return new Symbol(sym.);}
// exemples
"["           	{ return new Symbol(sym.CO);}
"]"         	{ return new Symbol(sym.CF);}
"{"         	{ return new Symbol(sym.ACO);}
"}"         	{ return new Symbol(sym.ACF);}
"("         	{ return new Symbol(sym.PO);}
")"         	{ return new Symbol(sym.PF);}
","				{ return new Symbol(sym.VIR);}
"in"			{ return new Symbol(sym.IN);}
">"				{ return new Symbol(sym.higherThanIdentifier);}
">="			{ return new Symbol(sym.higherEqualThanIdentifier);}
"<"				{ return new Symbol(sym.lesserThanIdentifier);}
"<="			{ return new Symbol(sym.lesserEqualThanIdentifier);}
"=="			{ return new Symbol(sym.equalIdentifier);}
"<>"			{ return new Symbol(sym.differentIdentifier);}
"|"				{ return new Symbol(sym.orIdentifier);}
"&"				{ return new Symbol(sym.andIdentifier);}
"||"			{ return new Symbol(sym.xorIdentifier);}
"<-"			{ return new Symbol(sym.affectationIdentifier);}
"++"			{ return new Symbol(sym.incrementIdentifier);}
"--"			{ return new Symbol(sym.decrementIdentifier);}
"print"			{ return new Symbol(sym.printIdentifier);}
"return"		{ return new Symbol(returnIdentifier);}
"while"			{ return new Symbol(sym.whileIdentifier);}
"if"			{ return new Symbol(sym.ifIdentifier);}
"for"			{ return new Symbol(sym.forIdentifier);}
"+"				{ return new Symbol(sym.additionOperator);}
"-"				{ return new Symbol(sym.substractionOperator);}
"*"				{ return new Symbol(sym.multiplicationOperator);}
"/"				{ return new Symbol(sym.divisionOperator);}
"#PONY#"		{ return new Symbol(sym.recognitionLanguageStatement);}
"main"			{ return new Symbol(sym.mainStatement);}
{FIN}			{ return new Symbol(sym.endLineStatement);}
{name}			{ return new Symbol(sym.idf);}
{NUM}			{ return new Symbol(sym.number);}
{TEXT}			{ return new Symbol(sym.text);}
{BOOL}			{ return new Symbol(sym.boolean);}
"void"			{ return new Symbol(sym.void);}
"Bool"			{ return new Symbol(sym.booleanIdentifier);}
"Num"			{ return new Symbol(sym.numberIdentifier);}
"Text"			{ return new Symbol(sym.textIdentifier);}
{NULL}				{;}
///Est-ce qu'il faut mettre les antislash??

