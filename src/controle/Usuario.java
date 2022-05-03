package controle;

import java.io.File;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import model.MUsuario;

@Table (name = "usuarios")
@Entity
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String nome;
	@Column(nullable = false)
	private String email;
	@Column(nullable = false)
	private String senha;
	@Column(nullable = false)
	private String sexo;
	@Column(nullable = true)
	private Date dataNascimento;
	@Column(nullable = false)
	private String cpf;
	@Column(nullable = false)
	private String idt;
	@Column(nullable = false)
	private String tel;
	@Column(nullable = false)
	private String cidade;
	@Column(nullable = false)
	private String estado;
	@Column(nullable = false)
	private String endereco;
	@Column(nullable = false)
	private String cep;
	@Column(nullable = true)
	private File foto;
	
	@Transient
	public String msg;

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

	public File getFoto() {
		return foto;
	}

	public void setFoto(File foto) {
		this.foto = foto;
	}
	
	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public int getId() {
		return id;
	}

	public Usuario(String nome, String email, String senha, String sexo, Date dataNascimento, String cpf, String idt, String tel, String cidade, String estado, String endereco, String cep, File foto) {
		this.nome = nome;
		this.email = email;
		this.senha = senha;
		this.sexo = sexo;
		this.dataNascimento = dataNascimento;
		this.cpf = cpf;
		this.idt = idt;
		this.tel = tel;
		this.cidade = cidade;
		this.estado = estado;
		this.endereco = endereco;
		this.cep = cep;
		this.foto = foto;
	}

	public Usuario() {}
	
	public boolean cadastrar(Usuario u){
		try {
			MUsuario mu = new MUsuario();
			mu.cadastrar(u);
				return true;		
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public boolean deletar(Usuario u){
		try {
			MUsuario mu = new MUsuario();
			if(mu.deletar(u)) {
				return true;
			}
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public boolean editar(Usuario u) {
		try {
			MUsuario mu = new MUsuario();
			mu.editar(u);
			return true;
		}catch(Exception e) {
			msg = e.toString();
		}
		return false;
	}
	
	public Usuario pegar(String email) {
		Usuario u = new Usuario();
		try {
			MUsuario mu = new MUsuario();
			u = mu.pegar(email);
			return u;
		}catch(Exception e) {
			msg = e.toString();
		}
		return null;		
	}
	
	public Usuario pegarPorNome(String nome) {
		Usuario u = new Usuario();
		try {
			MUsuario mu = new MUsuario();
			u = mu.pegarPorNome(nome);
			return u;
		}catch(Exception e) {
			msg = e.toString();
		}
		return null;		
	}
	
	public boolean login(String email, String senha) {
		try {
			MUsuario mu = new MUsuario();
			if(mu.login(email, senha)) {
				return true;
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		return false;
	}
	
}
