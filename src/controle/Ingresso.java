package controle;

import java.util.ArrayList;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import model.MIngresso;
import model.MPagamento;
import model.MUsuario;

@Table (name = "ingressos")
@Entity
public class Ingresso {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String categoria;
	@Column(nullable = false)
	private String status;
	@Column(nullable = true)
	private String cpf;
	@Column(nullable = false)
	private double valor;
	@Column(nullable = false)
	private double codigo;
	@Column(nullable = false)
	private boolean meiaEntrada;
	@Column(nullable = false)
	private String dia;
	
	@Transient
	public String msg;

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public boolean isMeiaEntrada() {
		return meiaEntrada;
	}

	public void setMeiaEntrada(boolean meiaEntrada) {
		this.meiaEntrada = meiaEntrada;
	}

	public int getId() {
		return id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getCodigo() {
		return codigo;
	}

	public void setCodigo(double codigo) {
		this.codigo = codigo;
	}

	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public Ingresso(String categoria, String status, double valor, double codigo, boolean meiaEntrada, String dia, String cpf) {
		this.categoria = categoria;
		this.status = status;
		this.valor = valor;
		this.codigo = codigo;
		this.meiaEntrada = meiaEntrada;
		this.dia = dia;
		this.cpf = cpf;
	}

	public Ingresso() {}
	
	public boolean cadastrar(Ingresso i){
		try {
			MIngresso mi = new MIngresso();
			mi.cadastrar(i);
				return true;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public boolean cadastrarVarios(Ingresso i, int qtd){
		try {
			MIngresso mi = new MIngresso();
			mi.cadastrarVarios(i, qtd);
				return true;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public ArrayList<Double> localizarIngresso(String categoria, String meiaEntrada, String dia){
		try {
			MIngresso mi = new MIngresso();
			ArrayList<Double> lista = mi.localizarIngresso(categoria, meiaEntrada, dia);
			return lista;
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return null;
	}
	
	public boolean mudarStatus(Ingresso i) {
		try {
			i.setStatus("indisponivel");
			MIngresso mi = new MIngresso();
			mi.mudarStatus(i);
			return true;
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public Ingresso pegar(double codigo) {
		Ingresso i = new Ingresso();
		try {
			MIngresso mi = new MIngresso();
			i = mi.pegar(codigo);
			return i;
		}catch(Exception e) {
			msg = e.toString();
		}
		return null;		
	}
	
	public ArrayList<String> listaCategoria(String cpf) {
		MIngresso in = new MIngresso();
		ArrayList<String> ler = new ArrayList<String>();
		try {
			ler = in.listaCategoria(cpf);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
	public ArrayList<String> listaDia(String cpf) {
		MIngresso in = new MIngresso();
		ArrayList<String> ler = new ArrayList<String>();
		try {
			ler = in.listaDia(cpf);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
	public ArrayList<Double> listaCodigo(String cpf) {
		MIngresso in = new MIngresso();
		ArrayList<Double> ler = new ArrayList<Double>();
		try {
			ler = in.listaCodigo(cpf);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
	public ArrayList<Double> listaValor(String cpf) {
		MIngresso in = new MIngresso();
		ArrayList<Double> ler = new ArrayList<Double>();
		try {
			ler = in.listaValor(cpf);
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
}
