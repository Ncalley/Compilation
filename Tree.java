import java.util.LinkedList;


public class Tree {
	String nomIdentificateur; /* nom d'identificarion, par exemple i */
	Object val; /* 1, 2,... ou <-, +, -... */
	LinkedList<Data> tds; /* table des symboles associée */
	String ref;
	Data t;
	int num ;
	LinkedList <Tree> l= new LinkedList<Tree>(); /* les fils de l'arbre (1er fils = 1er element */
	
	public Tree(){
		nomIdentificateur=null;
		val=null;
		tds=new LinkedList<Data>();
		ref=null;
		t=null;
		num=0;
		l = new LinkedList<Tree>();
	}

	public Tree(String nomIdentificateur, Object val, LinkedList<Data> tds, String ref, Data t, int num,
			LinkedList<Tree> l) {
		super();
		this.nomIdentificateur = nomIdentificateur;
		this.val = val;
		this.tds = tds;
		this.ref = ref;
		this.t = t;
		this.num = num;
		this.l = l;
	}
	
	
}
