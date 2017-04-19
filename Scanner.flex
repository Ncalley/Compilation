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
%debug

/* macros */


NULL = \n|[ \t]|\r|\r\n
COM = \/\/[^\n]*|\/\*(([^*])|(\*[^/]))*\*\/
NAME = ([a-zA-Z]+[0-9]*)+
NUM = [0-9]+(\.[0-9]+)?
TEXT = \'.*[^\']\'
BOOL = (true)|(false)


%%

/* regles */

/* "terminalReconnu"   { return new Symbol(sym.terminalReconnu);} */
//{ return new Symbol(sym.);}


// exemples

"["           	{ return new Symbol(sym.CO);}
"]"         	{ return new Symbol(sym.CF);}
"{"         	{ return new Symbol(sym.ACO);}
"}"         	{ return new Symbol(sym.ACF);}
"("         	{ return new Symbol(sym.PO);}
")"         	{ return new Symbol(sym.PF);}
","				{ return new Symbol(sym.VIR);}
"<-"			{ return new Symbol(sym.affectationIdentifier);}
"+"				{ return new Symbol(sym.additionOperator);}
"-"				{ return new Symbol(sym.substractionOperator);}
"*"				{ return new Symbol(sym.multiplicationOperator);}
"/"				{ return new Symbol(sym.divisionOperator);}
">"				{ return new Symbol(sym.higherThanIdentifier);}
">="			{ return new Symbol(sym.higherEqualThanIdentifier);}
"<"				{ return new Symbol(sym.lesserThanIdentifier);}
"<="			{ return new Symbol(sym.lesserEqualThanIdentifier);}
"=="			{ return new Symbol(sym.equalIdentifier);}
"<>"			{ return new Symbol(sym.differentIdentifier);}
"|"				{ return new Symbol(sym.orIdentifier);}
"&"				{ return new Symbol(sym.andIdentifier);}
"||"			{ return new Symbol(sym.xorIdentifier);}
"Not"			{ return new Symbol(sym.notIdentifier);}
"If"			{ return new Symbol(sym.ifIdentifier);}
"Else"			{ return new Symbol(sym.elseIdentifier);}
"While"			{ return new Symbol(sym.whileIdentifier);}
"#PONY#"		{ return new Symbol(sym.recognitionLanguageStatement);}
"Main"			{ return new Symbol(sym.mainStatement);}
"<3"			{ return new Symbol(sym.endLineStatement);}
"Bool"			{ return new Symbol(sym.booleanIdentifier);}
"Num"			{ return new Symbol(sym.numberIdentifier);}
"Text"			{ return new Symbol(sym.textIdentifier);}
"Return"		{ return new Symbol(sym.returnIdentifier);}
"Void"			{ return new Symbol(sym.vide);}
{NAME}			{ return new Symbol(sym.idf);}
{NUM}			{ return new Symbol(sym.number);}
{TEXT}			{ return new Symbol(sym.text);}
{BOOL}			{ return new Symbol(sym.bool);}
{NULL}			{;}
{COM}			{;}  
