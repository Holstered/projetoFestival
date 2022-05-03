package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	public Session abrirSessao() {
		try {
			SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			return session;		
		}catch(Exception e) {
			System.out.println("Erro no hibernate "+e.toString());
		}
		return null;
	}

}
