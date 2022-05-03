package model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import controle.Pagamento;

public class MPagamento {

	public boolean cadastrar(Pagamento p) {
		try {
			HibernateUtil hu = new HibernateUtil();
			Session session = hu.abrirSessao();
			if(session!=null) {
				session.save(p);
				session.close();	
				return true;
			}else {
				p.msg = "Erro sessão nula";		
			}
		}catch(Exception e) {
			p.msg = e.toString();
		}
		return false;
	}
	
	public Pagamento pegar(String cpf) {
		try {
			Pagamento f = new Pagamento();
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			if(session!=null) {
				Criteria criteria = session.createCriteria(Pagamento.class);			
				f = (Pagamento) criteria.add(Restrictions.eq("cpf", cpf)).uniqueResult();
				session.close();
				return f;	
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
	
	public ArrayList<String> listaNome(String cpf) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT nome FROM Pagamento WHERE cpf = '"+cpf+"'";
			
			Query query = session.createQuery(sql);
			ArrayList<String> lista = (ArrayList<String>)((org.hibernate.Query)query).list();
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
	
	public ArrayList<String> listaCpf(String cpf) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT cpf FROM Pagamento WHERE cpf = '"+cpf+"'";
			
			Query query = session.createQuery(sql);
			ArrayList<String> lista = (ArrayList<String>)((org.hibernate.Query)query).list();
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
	
	public ArrayList<String> listaMes(String cpf) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT mes FROM Pagamento WHERE cpf = '"+cpf+"'";
			
			Query query = session.createQuery(sql);
			ArrayList<String> lista = (ArrayList<String>)((org.hibernate.Query)query).list();
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
	
	public ArrayList<String> listaAno(String cpf) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT ano FROM Pagamento WHERE cpf = '"+cpf+"'";
			
			Query query = session.createQuery(sql);
			ArrayList<String> lista = (ArrayList<String>)((org.hibernate.Query)query).list();
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
	
	public ArrayList<Double> listaValor(String cpf) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT valor FROM Pagamento WHERE cpf = '"+cpf+"'";
			
			Query query = session.createQuery(sql);
			ArrayList<Double> lista = (ArrayList<Double>)((org.hibernate.Query)query).list();
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
