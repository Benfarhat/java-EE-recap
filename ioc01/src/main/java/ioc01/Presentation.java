package ioc01;

public class Presentation {

	public static void main(String[] args) {
		MetierImpl metier = new MetierImpl();
		System.out.println(metier.calcul());
	}

}
