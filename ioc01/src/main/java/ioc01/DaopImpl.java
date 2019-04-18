package ioc01;

public class DaopImpl implements IDao {

	public Double getTemperature() {
		/*
		 * Se connecter à la BD pour récupérer la donnée 
		 */
		double data = Math.random() * 100;
		return data;
	}
}