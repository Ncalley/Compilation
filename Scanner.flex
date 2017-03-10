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
[non terminal]      "expression régulière"


%%

/* regles */

/* terminaux : recognitionLanguageStatement, EOFStatement, void, CO, CF, ACO, ACF,PO, PF, mainStatement, 
endLineStatement,ifIdentifier, returnType, functionName, returnIdentifier,
whileIdentifier, forIdentifier, varName, affectationIdentifier, textIdentifier,
text, booleanIdentifier, numberIdentifier, incrementIdentifier, 
decrementIdentifier, printIdentifier,additionOperator,substractionOperator, 
multiplicationOperator, divisionOperator, equalIdentifier, higherThanIdentifier,
higherEqualThanIdentifier, lesserThanIdentifier, lesserEqualThanIdentifier,
differentIdentifier, orIdentifier, andIdentifier, xorIdentifier*/

"terminalReconnu"   { return new Symbol(sym.terminalReconnu);}

// exemples
"\["           	{ return new Symbol(sym.CO);}
"\]"         	{ return new Symbol(sym.CF);}
" "				{;}
"\{"         	{ return new Symbol(sym.ACO);}
"\}"         	{ return new Symbol(sym.ACF);}
"("         	{ return new Symbol(sym.PO);}
")"         	{ return new Symbol(sym.PF);}


