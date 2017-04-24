import java.util.LinkedList;


public class Tree {
	String nomIdentificateur; /* nom d'identificarion, par exemple i */
	int val; /* 1, 2,... ou <-, +, -... */
	Data[] tds; /* table des symboles associée */
	String ref;
	Data t;
	int num ;
	LinkedList <Tree> l; /* les fils de l'arbre (1er fils = 1er element */
}
