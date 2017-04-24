import java.util.LinkedList;

/**
 * Classe de test des arbres pour le code assembleur
 * @author Nicolas,Emeline,Audrey,Ines
 */
public class Test {

	/**
	 * La méthode TestArbre permet de voir le code assembleur généré pour un arbre donné et une table de données donnée
	 * @param LinkedList de Data, Tree
	 * @return void
	 */
	public static void TestArbre(LinkedList<Data> Data,Tree t){
		String res = new Assembleur(Data).generer_progr(new Tree());
		System.out.println(res);
	}
	
	public static void main(String[] args){
		
		//Test du programme minimal :
		
		TestArbre(new LinkedList<Data>(), new Tree());
		
		//Test du dictionnaire de données :
		
		LinkedList<Data> Data = new LinkedList<Data>();
		Data.add(new Data("main","fonction","Void",0,0,null,0));
		Data.add(new Data("i","globale","Num",0,0,new Integer(0),0));
		Data.add(new Data("j","globale","Num",0,0,new Integer(1),0));
		
		LinkedList<Tree> l = new LinkedList<Tree>();
		Tree t1 = new Tree("i",null,null,null,new Data("i","globale","Num",0,0,new Integer(0),0),0,null);
		Tree t2 = new Tree("j",null,null,null,new Data("j","globale","Num",0,0,new Integer(1),0),0,null);
		l.add(t1);
		l.add(t2);
		
		
		Tree aff = new Tree("affectation",null,null,"<-",null,0,l);
		LinkedList<Tree> l2 =new LinkedList<Tree>();
		l2.add(aff);
		Tree prog = new Tree("prog",null,null,null,null,0,l2);
		
		TestArbre(Data,prog);
	}
}
