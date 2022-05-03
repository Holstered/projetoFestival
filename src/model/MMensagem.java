package model;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import controle.Mensagem;
import controle.Mensagem;

public class MMensagem {
	
	public boolean criarTabela(Mensagem m) {
		HibernateUtil hu = new HibernateUtil();	
		Session session = hu.abrirSessao();	
		try {
			if(session!=null) {
			session.save(m);
			session.close();
			return true;
			}			
		}catch(Exception e) {
			e.toString();
		}
		return false;
	}
	
	public Mensagem pegar(String path) {
		try {
			HibernateUtil hu = new HibernateUtil();				
			Session session = hu.abrirSessao();
			Mensagem m = new Mensagem();
			if(session!=null) {
				Criteria criteria = session.createCriteria(Mensagem.class);			
				m = (Mensagem) criteria.add(Restrictions.eq("arquivo", path)).uniqueResult();
				session.close();
				return m;	
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
	
	public void editar(Mensagem m) {
		HibernateUtil hu = new HibernateUtil();
		Session session = hu.abrirSessao();
		try {
			if(session!=null) {
				session.update(m);
				session.getTransaction().commit();
				session.close();
			}
		}catch(Exception e) {
			e.toString();
		}
	}
	
	public boolean criarTxt(String path) {
		try {
			File f = new File(path+".txt");
			f.createNewFile();
			return true;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void escreverMsg(String path, String texto) {
		try {
			FileWriter fw = new FileWriter(path, true);
			BufferedWriter bw = new BufferedWriter(fw);

			bw.write(texto);

			bw.newLine();
			
			bw.close();

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<String> lerMsg(String path) {
		
		try {
			FileReader fr = new FileReader(path);
			BufferedReader br = new BufferedReader(fr);
			String s;
			ArrayList<String> lulu = new ArrayList<String>();
			while ((s = br.readLine()) != null) {
				lulu.add(s);
			}	
			fr.close();
			br.close();
			return lulu;
			
		} catch (IOException e) {
			System.out.println("###### Erro: "+e.getMessage());
			e.printStackTrace();
		}
		return null;
	}
	
	public String lerUltimaLinha(String path) {
			
		String ultimo = "";
		try {
			FileReader fr = new FileReader(path);
			BufferedReader br = new BufferedReader(fr);

			String line = "";
			while (line != null) {
				line = br.readLine();
				if (line != null) {
					ultimo = line;
				}
			}
			fr.close();
			br.close();
			return ultimo;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public ArrayList<String> partir(String path) throws FileNotFoundException{
		FileReader fr = new FileReader(path);
		BufferedReader br = new BufferedReader(fr);
		ArrayList<String> lulu = new ArrayList<String>();
		try {
		    String read = null;
		    while ((read = br.readLine()) != null) {
		        String[] splited = read.split(";");
		        for (String part : splited) {
		        	if(!part.equals("1") && !part.equals("2")) {
		        		lulu.add(part);
		        	}          
		        }
		    }
		    return lulu;
		} catch (IOException e) {
		    e.printStackTrace();
		} finally {
		    try {
		        br.close();
		    } catch (Exception e) {
		    }
		}
		return null;
	}
	
	public String ultimaLinhaSplit(String linha) {
		String[] splited = linha.split(";");
        for (String part : splited) {
        	if(!part.equals("1")) {
        		return part;
        	}          
        }
		return null;
	}
	
	public int numero(int i,String path){
		try {
		Mensagem m = new Mensagem();
		ArrayList<String> lulu = new ArrayList<String>();
		lulu = m.lerMsg(path);
		String linha;
		int numero = 0;	
		    linha = lulu.get(i);
		        String[] splited = linha.split(";");
		        for (String part : splited) {
		        	if(part.equals("1")) {
		        		numero = 1;
		        		return numero;
		        	}else{
			        		if(part.equals("2")) {
			        		numero = 2;
			        		return numero;
		        		}
		        	}
		        }
		} catch (IOException e) {
		    e.printStackTrace();
		}
		return 0;
	}
	
	public ArrayList<String> mensagemPendente() {
		try {
			HibernateUtil hu = new HibernateUtil();
			
			Session session = hu.abrirSessao();
			
			String sql = "SELECT nome FROM Mensagem WHERE status = 'pendente'";
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
