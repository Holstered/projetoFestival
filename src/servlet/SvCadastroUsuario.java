package servlet;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Mensagem;
import controle.Usuario;

@WebServlet("/SvCadastroUsuario")
public class SvCadastroUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public SvCadastroUsuario() {
    	super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");   
		
		Usuario u = new Usuario();
		Mensagem m = new Mensagem();
		
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");		
		u.setEmail(request.getParameter("email"));
		u.setSenha(request.getParameter("senha"));
		String dataNascimento = request.getParameter("dataNascimento");
		u.setCpf(request.getParameter("cpf"));
		u.setIdt(request.getParameter("idt"));
		u.setTel(request.getParameter("tel"));
		u.setSexo(request.getParameter("sexo"));
		u.setCidade(request.getParameter("cidade"));
		u.setEstado(request.getParameter("estado"));
		u.setCep(request.getParameter("cep"));
		String endereco = request.getParameter("endereco");
		String complemento = request.getParameter("complemento");
		
		String nomePessoa = nome+" "+sobrenome;
		
		String enderecoPessoa = endereco+", "+complemento;
		
		u.setNome(nomePessoa);
		
		u.setEndereco(enderecoPessoa);
		
		Date data;
	    
		String imagem = new File(request.getParameter("foto")).getAbsolutePath();
		File arquivo = new File(imagem);
		
		u.setFoto(arquivo);
		
		String pathNovaMensagem = "E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\"+request.getParameter("cpf")+".txt";
		
		m.setArquivo(pathNovaMensagem);
		m.setNome(nomePessoa);
		m.setStatus("resolvido");
		
		try {
			data = fmt.parse(dataNascimento);
			u.setDataNascimento(data);			
			try {
				if (u.cadastrar(u)) {
					m.criarTxt(request.getParameter("cpf"));
					m.criarTabela(m);
					request.setAttribute("categoria","usuario");
					request.getRequestDispatcher("index.jsp").forward(request, response);				
				} else {
					response.sendRedirect("cadastroUsuario.jsp");
				}
			}	catch (IOException e) {
				e.printStackTrace();
			}
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
	}

}
