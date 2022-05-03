package model;

import java.util.ArrayList;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import controle.Ingresso;
import controle.Usuario;

public class MIngresso {
		
	public boolean cadastrar(Ingresso i) {
		try {
			System.out.println(i.getCategoria());
			System.out.println(i.getCodigo());
			System.out.println(i.getDia());
			System.out.println(i.getStatus());
			System.out.println(i.getValor());
			HibernateUtil hu = new HibernateUtil();
			Session session = hu.abrirSessao();
			if(session!=null) {
				session.save(i);
				session.close();
				return true;
			}else {
				i.msg = "Erro sessão nula";		
			}
		}catch(Exception e) {
			i.msg = e.toString();
		}
		return false;
	}
	
	public boolean cadastrarVarios(Ingresso i, int qtd) {
		try {
			double codigo;
			HibernateUtil hu = new HibernateUtil();
			Session session = hu.abrirSessao();
			if(session!=null) {
				for(int j = 0; j < qtd; j++) {
					codigo = Math.random();
					codigo = codigo*10000.0;			
					i.setCodigo(codigo);
					i.cadastrar(i);
				}
				session.close();
				return true;
			}else {
				i.msg = "Erro sessão nula";		
			}
		}catch(Exception e) {
			i.msg = e.toString();
		}
		return false;
	}
	
	public ArrayList<Double> localizarIngresso(String categoria, String meiaEntrada, String dia) {
		HibernateUtil hu = new HibernateUtil();
		Session session = hu.abrirSessao();
		try {
			String sql = "SELECT codigo FROM Ingresso WHERE categoria='"+ categoria +"' AND meiaEntrada="+ meiaEntrada +" AND dia='"+dia+"' AND status='disponivel' ";

			 Query query = session.createQuery(sql);

			 ArrayList<Double> list = (ArrayList<Double>)query.list();

			 if (list == null || list.size() == 0) {
			 return null;
			 } else {
			 return list;
			 }
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
	
	public boolean deletar(Ingresso i) {
		try {
			HibernateUtil hu = new HibernateUtil();
			Session session = hu.abrirSessao();
			if(session!=null) {
				session.delete(i);
				session.getTransaction().commit();
				session.close();
				return true;
			}else {
				i.msg = "Erro sessão nula";		
			}
		}catch(Exception e) {
			e.toString();
		}
		return false;
	}
	
	public boolean mudarStatus(Ingresso i) {
		 HibernateUtil hu = new HibernateUtil();
		 Session session = hu.abrirSessao();		 
		 if(session!=null) {
			 session.update(i);
			 session.getTransaction().commit();
			 session.close();
			 return true;
		 	}else {
		 		i.msg = "Erro sessão nula";
		 	}
		 return false;
		 }
	
	public Ingresso pegar(double codigo) {
		try {
			HibernateUtil hu = new HibernateUtil();				
			Session session = hu.abrirSessao();
			Ingresso i = new Ingresso();
			if(session!=null) {
				Criteria criteria = session.createCriteria(Ingresso.class);			
				i = (Ingresso) criteria.add(Restrictions.eq("codigo", codigo)).uniqueResult();
				session.close();
				return i;	
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
	
	public ArrayList<String> listaCategoria(String cpf) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT categoria FROM Ingresso WHERE cpf = '"+cpf+"'";
			
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
	
	public ArrayList<String> listaDia(String cpf) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT dia FROM Ingresso WHERE cpf = '"+cpf+"'";
			
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
	
	public ArrayList<Double> listaCodigo(String cpf) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT codigo FROM Ingresso WHERE cpf = '"+cpf+"'";
			
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
	
	public ArrayList<Double> listaValor(String cpf) {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT valor FROM Ingresso WHERE cpf = '"+cpf+"'";
			
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
