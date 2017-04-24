/**
 * Ce que ça fait
 * @author Nicolas
 *
 */
public class Data {
	String nom; /* identifiant */
	String cat; /* catégorie: fonction, globale ou locale, idf */
	String type; /* Void, Num, Bool, Text */
	int nbParam;
	int nbVarLocale;
	Object val;
	int rang;
	
	public Data(){
		nom=null;
		cat=null;
		type=null;
		nbParam=0;
		nbVarLocale=0;
		val=null;
		rang=0;
	}

	public Data(String nom, String cat, String type, int nbParam, int nbVarLocale, Object val, int rang) {
		super();
		this.nom = nom;
		this.cat = cat;
		this.type = type;
		this.nbParam = nbParam;
		this.nbVarLocale = nbVarLocale;
		this.val = val;
		this.rang = rang;
	}
	
	
}
