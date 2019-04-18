package ioc01;

public class MetierImpl implements IMetier {
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
