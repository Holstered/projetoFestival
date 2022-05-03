package controle;

import java.io.File;
import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import model.MArtista;

@Table (name = "artistas")
@Entity
public class Artista {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private double cache;
	@Column(nullable = false)
	private String status;
	@Column(nullable = false)
	private String dia;
	@Column(nullable = true)
	private File foto;
	
	@Transient
	public String msg;
	
	public int getId() {
		return id;
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getCache() {
		return cache;
	}

	public void setCache(double cache) {
		this.cache = cache;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public File getFoto() {
		return foto;
	}

	public void setFoto(File foto) {
		this.foto = foto;
	}

	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	public Artista(String nome, double cache, String status, File foto,  String dia) {
		this.nome = nome;
		this.cache = cache;
		this.status = status;
		this.foto = foto;
		this.dia = dia;
	}

	public Artista() {}

	public boolean cadastrar(Artista a){
		try {
			MArtista ma = new MArtista();
			ma.cadastrar(a);
				return true;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public boolean deletar(Artista a){
		try {
			MArtista ma = new MArtista();
			ma.deletar(a);
				return true;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public Artista pegar(String nome) {
		try {
			Artista a1 = new Artista();
			MArtista ma = new MArtista();
			a1 = ma.pegar(nome);
				return a1;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return null;		
	}
	
	public ArrayList<String> pedidoArtista(String dia, String status) {
		MArtista mm = new MArtista();
		ArrayList<String> ler = new ArrayList<String>();
		try {
			ler = mm.pedidoArtista(dia, status);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
}