package ioc01;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

// @Component("dao")
@Repository("dao")
public class DaopImpl implements IDao {

	public Double getTemperature() {
		/*
		 * Se connecter � la BD pour r�cup�rer la donn�e 
		 */
		double data = Math.random() * 100;
		return data;
	}
}