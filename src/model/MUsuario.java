package model;


import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import controle.Artista;
import controle.Usuario;

public class MUsuario {
		
	public boolean cadastrar(Usuario u) {
			try {
				HibernateUtil hu = new HibernateUtil();
				Session session = hu.abrirSessao();
				if(session!=null) {
					session.save(u);
					session.close();
					return true;
				}else {
					u.msg = "Erro sessão nula";		
				}
			}catch(Exception e) {
				u.msg = e.toString();
			}
			return false;
		}
		
		public boolean editar(Usuario u) {
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
		
		public boolean deletar(Usuario u) {
			try {
				HibernateUtil hu = new HibernateUtil();
				Session session = hu.abrirSessao();
				if(session!=null) {
					session.delete(u);
					session.getTransaction().commit();
					session.close();
					return true;
				}else {
					u.msg = "Erro sessão nula";		
				}
			}catch(Exception e) {
				e.toString();
			}
			return false;
		}
		
		public Usuario pegar(String email) {
			try {
				HibernateUtil hu = new HibernateUtil();				
				Session session = hu.abrirSessao();
				Usuario u = new Usuario();
				if(session!=null) {
					Criteria criteria = session.createCriteria(Usuario.class);			
					u = (Usuario) criteria.add(Restrictions.eq("email", email)).uniqueResult();
					session.close();
					return u;	
				}
			}catch(Exception e) {
				System.out.println(e.toString());
			}
			return null;
		}
		
		public Usuario pegarPorNome(String nome) {
			try {
				HibernateUtil hu = new HibernateUtil();				
				Session session = hu.abrirSessao();
				Usuario u = new Usuario();
				if(session!=null) {
					Criteria criteria = session.createCriteria(Usuario.class);			
					u = (Usuario) criteria.add(Restrictions.eq("nome", nome)).uniqueResult();
					session.close();
					return u;	
				}
			}catch(Exception e) {
				System.out.println(e.toString());
			}
			return null;
		}
		
		public boolean login(String email, String senha) {
			try {
				Usuario u = new Usuario();
				HibernateUtil hu = new HibernateUtil();
				
				Session session = hu.abrirSessao();
				if(session!=null) {
					Criteria criteria = session.createCriteria(Usuario.class);			
					u = (Usuario) criteria.add(Restrictions.eq("email", email)).uniqueResult();
					session.close();
					if(u.getSenha().equals(senha)) {
						return true;
					}
				}
			}catch(Exception e) {
				System.out.println(e.toString());
			}
			return false;
		}
		
		public void localizarImagem(String nome){
			try {
				Usuario u = new Usuario();
				HibernateUtil hu = new HibernateUtil();
				
				Session session = hu.abrirSessao();
				if(hu!=null) {				
					Criteria criteria = session.createCriteria(Usuario.class);			
					u = (Usuario) criteria.add(Restrictions.eq("nome", nome)).uniqueResult();
					BufferedImage image = null;
					File f = u.getFoto();
					image = ImageIO.read(f);
					File f2 = new File("E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\WebContent\\imagens\\"+u.getNome()+".jpg");
					ImageIO.write(image, "jpg", f2);
					session.close();
				}			
			}catch(Exception e) {
				e.toString();
			}	
		}
		
}
