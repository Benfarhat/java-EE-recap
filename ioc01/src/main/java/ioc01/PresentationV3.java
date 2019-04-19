package ioc01;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PresentationV3 {

	public static void main(String[] args) {
		/*
		 * Implementation via Spring et la configuration via un fichier xml
		 */
		
		ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
		IMetier metier = (IMetier) context.getBean("metierBean");
		System.out.println(metier.calcul());
		

	}

}
