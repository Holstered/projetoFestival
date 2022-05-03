package controle;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import model.MMensagem;
import model.MMensagem;

@Table (name = "mensagens")
@Entity
public class Mensagem {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String arquivo;
	@Column(nullable = false)
	private String status;
	
	
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getArquivo() {
		return arquivo;
	}

	public void setArquivo(String arquivo) {
		this.arquivo = arquivo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Mensagem() {
	}

	public Mensagem(String nome, String arquivo, String status) {
		this.nome = nome;
		this.arquivo = arquivo;
		this.status = status;
	}

	public void escreverMsg(String path, String texto) {
		MMensagem msg = new MMensagem();
		msg.escreverMsg(path, texto);
	}
	
	public ArrayList<String> lerMsg(String path) throws IOException {
		MMensagem msg = new MMensagem();
		ArrayList<String> ler;
		ler = msg.lerMsg(path);
		return ler;
	}
	
	public String lerUltimaLinha(String path) {
		MMensagem msg = new MMensagem();
		String ultimo;
		ultimo = msg.lerUltimaLinha(path);
		return ultimo;
	}
	
	public boolean criarTxt(String path) {
		MMensagem mm = new MMensagem();
		if(mm.criarTxt(path)) {
			return true;
		}else{
			return false;
		}
	}
	
	public boolean criarTabela(Mensagem m) {
		MMensagem mm = new MMensagem();
		try {
			mm.criarTabela(m);
			return true;
		}catch(Exception e) {
			e.toString();
		}
		return false;
	}
	
	public void editar(Mensagem m) {
		MMensagem mm = new MMensagem();
		mm.editar(m);
	}
	
	public Mensagem pegar(String path) {
		Mensagem u = new Mensagem();
		try {
			MMensagem mu = new MMensagem();
			u = mu.pegar(path);
			return u;
		}catch(Exception e) {
			e.toString();
		}
		return null;		
	}
	
	public ArrayList<String> partir(String path) {
		MMensagem mm = new MMensagem();
		try {
			ArrayList<String> ler = new ArrayList<String>();
			ler = mm.partir(path);
			return ler;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String ultimaLinhaSplit(String linha) {
		MMensagem mm = new MMensagem();
		String ler = mm.ultimaLinhaSplit(linha);
		if(ler != null) {
			return ler;
		}else {
			return null;
		}
	}
	
	public int numero(int i, String path) {
		MMensagem mm = new MMensagem();
		int numero;
		numero = mm.numero(i, path);
		return numero;
	}
	
	public ArrayList<String> mensagemPendente() {
		MMensagem mm = new MMensagem();
		ArrayList<String> ler = new ArrayList<String>();
		try {
			ler = mm.mensagemPendente();
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
}
