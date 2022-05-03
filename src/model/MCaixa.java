package model;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import controle.Caixa;

public class MCaixa {

	public boolean cadastrar(Caixa a) {
		try {
			HibernateUtil hu = new HibernateUtil();
			Session session = hu.abrirSessao();
			if(session!=null) {
				session.save(a);
				session.close();
				return true;
			}else {
				a.msg = "Erro sessão nula";		
			}
		}catch(Exception e) {
			a.msg = e.toString();
		}
		return false;
	}
	
	public boolean editar(Caixa u) {
		 HibernateUtil hu = new HibernateUtil();
		 Session session = hu.abrirSessao();		 
		 if(session!=null) {
			 session.update(u);
			 session.getTransaction().commit();
			 session.close();
			 return true;
		 	}else {
		 		u.msg = "Erro sessão nula";
		 	}
		 return false;
		 }
	
	public Caixa pegar() {
		Caixa cx = new Caixa();
		try {
			 HibernateUtil hu = new HibernateUtil();
			 Session session = hu.abrirSessao();		 
			 if(session!=null) {
				cx = session.find(Caixa.class, 1);
				session.getTransaction().commit();
				session.close();
				return cx;
			 }
			 } catch (HibernateException e) {
			 cx.msg = e.toString();
			 } 
		return null;
	}
}
