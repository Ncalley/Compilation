/**
 * 
 */


import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

import fr.ul.miage.exemple.generated.*;
/**
 * @author nicolas
 *
 */
public class Main {

	/**
	 * @param args
	 * @throws FileNotFoundException 
	 */
	public static void main(String[] args) throws FileNotFoundException {
		
		String file = "samples/12-recursivite.txt";
		ParserCup parser = new ParserCup(new Yylex(new BufferedReader(new FileReader(file))));
		try {
			parser.parse();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*
		 * Test du programme minimal:
		 * 		decommenter la ligne de code suivante pour l'exécuter:
		 */
		//System.out.println(new Assembleur().generer_progr(new Tree()));
		
		/*
		 * TODO: Autres tests unitaires pour montrer qu'on a travaillé
		 */
	}

}
