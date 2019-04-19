package ioc01;

import java.io.File;
import java.lang.reflect.Method;
import java.util.Scanner;

public class PresentationV2 {

	public static void main(String[] args) throws Exception {
		/*
		 * Instanciation dynamique (avec Class forName)
		 */

			@SuppressWarnings("resource")
			Scanner scanner  = new Scanner(new File("config.txt"));
			
			String daoClassName = scanner.nextLine();
			Class<?> classDAO = Class.forName(daoClassName);
			IDao dao = (IDao) classDAO.newInstance();
			
			System.out.println(dao.getTemperature());
			
			String metierClassName = scanner.nextLine();
			Class<?> classMetier = Class.forName(metierClassName);
			IMetier metier = (IMetier) classMetier.newInstance();
			

			//Method method = classMetier.getMethod("setDao", new Class[] {IDao.class, ... });
			Method method = classMetier.getMethod("setDao", IDao.class);
			method.invoke(metier, dao);
			
			System.out.println(metier.calcul());


	}

}
