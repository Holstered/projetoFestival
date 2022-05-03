package model;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import controle.Funcionario;

public class MFuncionario {

	public boolean cadastrar(Funcionario f) {
		try {
			HibernateUtil hu = new HibernateUtil();
			Session session = hu.abrirSessao();
			if(session!=null) {
				session.save(f);
				session.close();	
				return true;
			}else {
				f.msg = "Erro sessão nula";		
			}
		}catch(Exception e) {
			f.msg = e.toString();
		}
		return false;
	}
	
	public void editar(Funcionario f) {
		 HibernateUtil hu = new HibernateUtil();
		 Session session = hu.abrirSessao();
		 
		 if(session!=null) {
			 session.update(f);
			 session.getTransaction().commit();
			 session.close();
		 	}else {
		 		f.msg = "Erro sessão nula";
		 	}
		 }
	
	public boolean deletar(Funcionario f) {
		try {
			HibernateUtil hu = new HibernateUtil();
			Session session = hu.abrirSessao();
			if(session!=null) {
				session.delete(f);
				session.getTransaction().commit();
				session.close();
				return true;
			}else {
				f.msg = "Erro sessão nula";		
			}
		}catch(Exception e) {
			e.toString();
		}
		return false;
	}
	
	public Funcionario pegar(String email) {
		try {
			Funcionario f = new Funcionario();
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			if(session!=null) {
				Criteria criteria = session.createCriteria(Funcionario.class);			
				f = (Funcionario) criteria.add(Restrictions.eq("email", email)).uniqueResult();
				session.close();
				return f;	
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
	
	public boolean login(String email, String senha) {
		try {
			Funcionario f = new Funcionario();
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			if(session!=null) {
				Criteria criteria = session.createCriteria(Funcionario.class);			
				f = (Funcionario) criteria.add(Restrictions.eq("email", email)).uniqueResult();
				session.close();
				if(f.getSenha().equals(senha)) {
					return true;
				}
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return false;
	}
	
	public ArrayList<String> buscaFuncionario() {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT nome FROM Funcionario";
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
	
	public Funcionario pegarPorNome(String nome) {
		try {
			HibernateUtil hu = new HibernateUtil();				
			Session session = hu.abrirSessao();
			Funcionario u = new Funcionario();
			if(session!=null) {
				Criteria criteria = session.createCriteria(Funcionario.class);			
				u = (Funcionario) criteria.add(Restrictions.eq("nome", nome)).uniqueResult();
				session.close();
				return u;	
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
}
