import java.util.LinkedList;


public class Tree {
	String nomIdentificateur;
	String cat; 
	int val; /* valeur, si variable */
	Data[] tds; /* table des symboles associée */
	Reference ref; 
	int num;
	LinkedList <Tree> l; /* les fils de l'arbre (1er fils = 1er element */
}
