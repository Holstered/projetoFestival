package model;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import controle.Artista;

public class MArtista {

	public boolean cadastrar(Artista a) {
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
	
	public boolean editar(Artista a) {
		 HibernateUtil hu = new HibernateUtil();
		 Session session = hu.abrirSessao();		 
		 if(session!=null) {
			 session.update(a);
			 session.getTransaction().commit();
			 session.close();
			 return true;
		 	}else {
		 		a.msg = "Erro sessão nula";
		 	}
		return false;
		 }
	
	public boolean deletar(Artista a) {
		try {
			HibernateUtil hu = new HibernateUtil();
			Session session = hu.abrirSessao();
			if(session!=null) {
				session.delete(a);
				session.getTransaction().commit();
				session.close();
				return true;
			}else {
				a.msg = "Erro sessão nula";		
			}
		}catch(Exception e) {
			e.toString();
		}
		return false;
	}
	
	public Artista pegar(String nome) {
		try {
			Artista a1 = new Artista();
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			if(session!=null) {
				Criteria criteria = session.createCriteria(Artista.class);			
				a1 = (Artista) criteria.add(Restrictions.eq("nome", nome)).uniqueResult();
				session.close();
				return a1;	
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
	
	public ArrayList<String> pedidoArtista(String dia, String status) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT nome FROM Artista WHERE status = '"+status+"' and dia = '"+dia+"'";
			 Query query = session.createQuery(sql);
			 ArrayList<String> lista = (ArrayList<String>)((org.hibernate.Query) query).list();
			if(session!=null) {
				session.close();
				if (lista == null || lista.size() == 0) {
					 return null;
					 } else {
					 return lista;
					 }
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
	
}
