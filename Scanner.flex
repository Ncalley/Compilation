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
"terminalReconnu"   { return new Symbol(sym.terminalReconnu);}

// exemples
"."           { return new Symbol(sym.PT);}
"FEV"         { return new Symbol(sym.FEV);}

{SEP}		  
.			        { return null;}


