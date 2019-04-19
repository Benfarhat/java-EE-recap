package ioc01;

import org.springframework.stereotype.Component;

@Component("dao")
public class DaopImpl implements IDao {

	public Double getTemperature() {
		/*
		 * Se connecter à la BD pour récupérer la donnée 
		 */
		double data = Math.random() * 100;
		return data;
	}
}