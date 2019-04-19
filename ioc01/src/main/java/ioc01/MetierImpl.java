package ioc01;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// @Component("metier")
@Service("metier")
public class MetierImpl implements IMetier {
	@Autowired
	@Resource(name="dao")
	private IDao dao;
	
	public IDao getDao() {
		return dao;
	}

	public void setDao(IDao dao) {
		this.dao = dao;
	}

	public Double calcul() {
		double temperature = dao.getTemperature();
		double resultat = temperature * 12;
		return resultat;
	}

}
