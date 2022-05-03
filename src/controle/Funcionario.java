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

import model.MFuncionario;

@Table (name = "funcionarios")
@Entity
public class Funcionario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false, unique = true)
	private String email;
	@Column(length = 20, nullable = false)
	private String senha;
	@Column(nullable = false)
	private Date dataNascimento;
	@Column(length = 11, nullable = false, unique = true)
	private String cpf;
	@Column(length = 20, nullable = false, unique = true)
	private String idt;
	@Column(length = 11, nullable = false)
	private String tel;
	@Column(nullable = false)
	private String endereco;
	@Column(nullable = false)
	private double salario;
	@Column(nullable = false)
	private String funcao;
	
	@Transient
	public String msg;
	
	public Funcionario(String nome, String email, String senha, Date dataNascimento, String cpf, String idt, String tel, String endereco, double salario, String funcao) {
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.dataNascimento = dataNascimento;
		this.cpf = cpf;
		this.idt = idt;
		this.tel = tel;
		this.endereco = endereco;
		this.salario = salario;
		this.funcao = funcao;
	}

	public Funcionario() {}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getIdt() {
		return idt;
	}

	public void setIdt(String idt) {
		this.idt = idt;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public double getSalario() {
		return salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	public String getFuncao() {
		return funcao;
	}

	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}
	
	public boolean cadastrar(Funcionario f1){				
		try {
			MFuncionario f = new MFuncionario();
			f.cadastrar(f1);
				return true;
			
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public boolean deletar(Funcionario f){
		try {
			MFuncionario mf = new MFuncionario();
			mf.deletar(f);
				return true;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public void editar(Funcionario f) {
		try {
			MFuncionario mf = new MFuncionario();
			mf.editar(f);		
		}catch(Exception e) {
			msg = e.toString();
		}
	}
	
	public Funcionario pegar(String email) {
		try {
			Funcionario f = new Funcionario();
			MFuncionario mf = new MFuncionario();
			f = mf.pegar(email);
				return f;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return null;		
	}
	
	public boolean login(String email, String senha) {
		try {
			MFuncionario mf = new MFuncionario();
			if(mf.login(email, senha)) {
				return true;
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return false;
	}
	
	public ArrayList<String> buscaFuncionarios() {
		MFuncionario mm = new MFuncionario();
		ArrayList<String> ler = new ArrayList<String>();
		try {
			ler = mm.buscaFuncionario();
			return ler;
		}catch(Exception e) {
			e.toString();
		}
		return null;
	}
	
	public Funcionario pegarPorNome(String nome) {
		Funcionario u = new Funcionario();
		try {
			MFuncionario mu = new MFuncionario();
			u = mu.pegarPorNome(nome);
			return u;
		}catch(Exception e) {
			msg = e.toString();
		}
		return null;		
	}
	
}
