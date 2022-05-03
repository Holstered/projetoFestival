package controle;

import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import model.MMensagem;
import model.MPagamento;

@Table (name = "pagamentos")
@Entity
public class Pagamento {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String cpf;
	@Column(nullable = false)
	private String mes;
	@Column(nullable = false)
	private String ano;
	@Column(nullable = false)
	private double valor;
	
	@Transient
	public String msg;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getMes() {
		return mes;
	}
	public void setMes(String mes) {
		this.mes = mes;
	}
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	
	public Pagamento(String nome, String cpf, String mes, String ano, double valor) {
		this.nome = nome;
		this.cpf = cpf;
		this.mes = mes;
		this.ano = ano;
		this.valor = valor;
	}
	
	public Pagamento() {
		
	}
	
	public boolean cadastrar(Pagamento f1){				
		try {
			MPagamento f = new MPagamento();
			f.cadastrar(f1);
				return true;
			
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public Pagamento pegar(String email) {
		try {
			Pagamento f = new Pagamento();
			MPagamento mf = new MPagamento();
			f = mf.pegar(email);
				return f;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return null;		
	}
	
	public ArrayList<String> listaNome(String cpf) {
		MPagamento pg = new MPagamento();
		ArrayList<String> ler = new ArrayList<String>();
		try {
			ler = pg.listaNome(cpf);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
	public ArrayList<String> listaAno(String cpf) {
		MPagamento pg = new MPagamento();
		ArrayList<String> ler = new ArrayList<String>();
		try {
			ler = pg.listaAno(cpf);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
	public ArrayList<String> listaMes(String cpf) {
		MPagamento pg = new MPagamento();
		ArrayList<String> ler = new ArrayList<String>();
		try {
			ler = pg.listaMes(cpf);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
	public ArrayList<Double> listaValor(String cpf) {
		MPagamento pg = new MPagamento();
		ArrayList<Double> ler = new ArrayList<Double>();
		try {
			ler = pg.listaValor(cpf);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
	public ArrayList<String> listaCpf(String cpf) {
		MPagamento pg = new MPagamento();
		ArrayList<String> ler = new ArrayList<String>();
		try {
			ler = pg.listaCpf(cpf);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
}
