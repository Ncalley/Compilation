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
SEP     =   [ \t]
DECAL	=	("+"|"-")[0-9]+
NUM     =   [0-9]+
FIN     =   \r|\n|\r\n


%%

/* regles */

"."         { return new Symbol(sym.PT);}
"FEV"         { return new Symbol(sym.FEV);}
"MAR"         { return new Symbol(sym.MAR);}
"AVR"         { return new Symbol(sym.AVR);}
"MAI"         { return new Symbol(sym.MAI);}
"JUI"         { return new Symbol(sym.JUI);}
"JUIL"        { return new Symbol(sym.JUIL);}
"AOU"         { return new Symbol(sym.AOU);}
"SEP"         { return new Symbol(sym.SEP);}
"OCT"         { return new Symbol(sym.OCT);}
"NOV"         { return new Symbol(sym.NOV);}
"DEC"         { return new Symbol(sym.DEC);}
{SEP}		  
.			  { return null;}


