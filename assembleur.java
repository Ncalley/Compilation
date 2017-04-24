
public class assembleur {
	Data[] tds;
	public String generer_progr (Tree a){
		String res;
		res = "include beta.asm \n "
				+ "CMOVE (pile, ST) \n "
				+ "CALL (main) \n "
				+ "HALT";
		res+=generer_data(tds);
		res+= "code : ";
		for (Tree f : a.l){
			res+= generer_fonction(f);
		}
		res += " pile : ";
		return res;
	}
	
/* EXEMPLE :
 * data :
 * i : LONG(0) //int i =0
 * j : LONG(0) // pas d’ initialisation donc on met 0
 * k : LONG(0)// pas d’ initialisation donc on met 0
*/	
	public String generer_data (Data[] tds){
		String res;
		res = " data : ";
		for (Data x : tds){
			if (x.cat == "globale"){
				res+= x.nom + " : long(" + x.val +") \n";
			}
		}
		return res;
	}

/* de type " fonction | " */
	public String generer_fonction (Tree a){
		String res;
		res = a.ref + ":";
		res += "PUSH (LP) \n"
				+ "PUSH (BP) \n"
				+ " MOVE(SP, BP) \n";
		int n = a.t.nbVarLocale;
		res += "ALLOCATE("+n+") \n";
		for (Tree f : a.l){
			res += generer_instruction(f);
		}
		res += "return_"+a.ref+":"
				+ " DEALLOCATE("+n+") \n"
				+ " POP (BP) \n"
				+ " POP (LP) \n"
				+ " RTN( )";
		return res;
	}
	public String generer_instruction (Tree a){
		String res = "";
		switch (a.ref){
			case "<-" : 
				res = generer_affectation(a);
			case "write" :
				res = generer_ecrire(a);
			case "if" : 
				res = generer_if(a);
			case "return" :
				res = generer_return(a);
			case "while" : 
				res = generer_while(a);		
		}
		return res;
	}
	
	public String generer_affectation (Tree a){
		String res;
		res = generer_expression(a.l.get(1));
		res+= "POP (R0) \n"
				+ " ST(R0,"+a.l.get(0).ref+")";
		return res;
	}
	
	public String generer_expression (Tree a){
		String res = "";
		switch (a.t.cat){
		case "cst" : 
			res = "CMOVE("+a.val+",R0) \n"
					+ "PUSH(R0) \n";
		case "idf" :
			res = "LD("+a.ref+",R0) \n"
					+ "PUSH(R0) \n";
		case "+" : 
			res = generer_expression(a.l.get(0));
			res+= generer_expression(a.l.get(1));
			res += "POP(R2) \n"
					+ "POP(R1) \n"
					+ "ADD(R1,R2,R0) \n"
					+ "PUSH(R0) \n" ;
		case "-" :
			res = generer_expression(a.l.get(0));
			res+= generer_expression(a.l.get(1));
			res += "POP(R2) \n"
					+ "POP(R1) \n"
					+ "SUB(R1,R2,R0) \n"
					+ "PUSH(R0) \n" ;
		case "*" : 
			res = generer_expression(a.l.get(0));
			res+= generer_expression(a.l.get(1));
			res += "POP(R2) \n"
					+ "POP(R1) \n"
					+ "MUL(R1,R2,R0) \n"
					+ "PUSH(R0) \n" ;	
		case "/" : 
			res = generer_expression(a.l.get(0));
			res+= generer_expression(a.l.get(1));
			res += "POP(R2) \n"
					+ "POP(R1) \n"
					+ "DIV(R1,R2,R0) \n"
					+ "PUSH(R0) \n" ;
		}
		return res;
	}
	
	public String generer_return (Tree a){
		String res = "";
		if (a.l.size()==1){
			res = generer_expression(a.l.get(0));
			int b = (-a.t.nbParam -2) * 4;
			res+= "POP(R0) \n"
					+ "PUTFRAME(R0,"+b+")";
		}
		res+= "BR(return_"+a.t.nom+")";
		return res;
	}
	
	public String generer_while(Tree a){
		String res = "";
		res+= "while"+a.num+":";
		res+= generer_condition(a.l.get(0));
		res+= "POP(R0) \n"
				+ "BF(done"+a.num+":) \n";
		res+= generer_bloc(a.l.get(1));
		res+= "BR(while"+a.num+":) \n"
				+ "done"+a.num;
		return res;
	}
	public String generer_condition(Tree a){
		String res="";
		switch (a.ref){
		case ">" :
			res+= generer_expression (a.l.get(0));
			res+= generer_expression (a.l.get(1));
			res+= " POP(R2) \n"
					+ " POP(R1) \n "
					+ " CMPLT(R1,R2,R0) \n"
					+ " PUSH (R0) \n";
		case "<" :
			res+= generer_expression (a.l.get(0));
			res+= generer_expression (a.l.get(1));
			res+= " POP(R2) \n"
					+ " POP(R1) \n "
					+ " CMPLT(R2,R1,R0) \n"
					+ " PUSH (r0) \n";
		case "==" :
			res+= generer_expression (a.l.get(0));
			res+= generer_expression (a.l.get(1));
			res+= " POP(R2) \n"
					+ " POP(R1) \n "
					+ " CMPEQ(R1,R2,R0) \n"
					+ " PUSH (R0) \n";
		case "!=" :
			res+= generer_expression (a.l.get(0));
			res+= generer_expression (a.l.get(1));
			res+= " POP(R2) \n"
					+ " POP(R1) \n "
					+ " CMPEQ(R1,R2,R0) \n"
					+ " CMOVE(0,R1) \n "
					+ " CMPEQ(R0,R1,R0) \n"
					+ " PUSH (R0) \n";
		case "!=0" :
			res+= generer_expression (a);
			res+= generer_expression (a.l.get(1));
			res+= " POP(R0) \n"
					+ " CMOVE(0,R1) \n "
					+ " CMPEQ(R0,R1,R2) \n"
					+ " PUSH (R2) \n";
		}
		return res;
	}
	
	public String generer_bloc(Tree a){
		String res="";
		for (Tree f : a.l){
			res+= generer_instruction (f);
		}
		return res;
	}
	
	public String generer_if(Tree a){
		String res="";
		res+= generer_condition(a.l.get(0));
		res+= "POP(R0) \n"
				+ "BF(else"+a.num+") \n";
		res+= generer_bloc(a.l.get(1));
		res+= "BR(finsi"+a.num+") \n"
				+ "else"+a.num+":";
		res+= generer_bloc(a.l.get(2));
		res+= "finsi"+a.num+":";
		return res;
	}
	public String generer_ecrire(Tree a){
		String res="";
		res+= "";
		return res;
	}
}
