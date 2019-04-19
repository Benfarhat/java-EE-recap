package ioc01;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class PresentationV4 {

	/*
	 * Implémentation via les annotations @Component
	 */
	public static void main(String[] args) {
		ApplicationContext context = new AnnotationConfigApplicationContext("ioc01");
		IMetier metier = context.getBean(IMetier.class);
		System.out.println(metier.calcul());

	}

}
