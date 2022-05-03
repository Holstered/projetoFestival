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

import controle.Funcionario;
import controle.Mensagem;

@WebServlet("/SvCadastrarFuncionario")
public class SvCadastrarFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SvCadastrarFuncionario() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");   
		
		Funcionario f = new Funcionario();
		Mensagem m = new Mensagem();
		
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");		
		f.setEmail(request.getParameter("email"));
		f.setSenha(request.getParameter("senha"));
		String dataNascimento = request.getParameter("dataNascimento");
		f.setCpf(request.getParameter("cpf"));
		f.setIdt(request.getParameter("idt"));
		f.setTel(request.getParameter("tel"));
		f.setFuncao(request.getParameter("funcao"));
		double salario = Double.parseDouble(request.getParameter("salario"));
		f.setSalario(salario);
		String endereco = request.getParameter("endereco");
		
		String nomePessoa = nome+" "+sobrenome;
		
		String enderecoPessoa = endereco;
		
		f.setNome(nomePessoa);
		
		f.setEndereco(enderecoPessoa);
		
		Date data;
	
		try {
			data = fmt.parse(dataNascimento);
			f.setDataNascimento(data);			
			try {
				if (f.cadastrar(f)) {
					request.getRequestDispatcher("index2.jsp").forward(request, response);				
				} else {
					response.sendRedirect("cadastrofuncionario.jsp");
				}
			}	catch (IOException e) {
				e.printStackTrace();
			}
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
	}

}
