package ioc01;

public class DaopImpl implements IDao {

	public Double getTemperature() {
		/*
		 * Se connecter � la BD pour r�cup�rer la donn�e 
		 */
		double data = Math.random() * 100;
		return data;
	}
}