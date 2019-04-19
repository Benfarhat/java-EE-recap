package ioc01;

public class Presentation {

	public static void main(String[] args) {
		/*
		 * Couplage Faible
		 * Injection de dépendances par instanciation statique (utilisation du new)
		 */
		MetierImpl metier = new MetierImpl();
		DaopImpl dao = new DaopImpl();
		metier.setDao(dao);
		System.out.println(metier.calcul());
	}

}
