package servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Usuario;

@WebServlet("/SvEditarUsuario")
public class SvEditarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public SvEditarUsuario() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		try {
			SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");  
			
			Usuario u = new Usuario();
			
			u = u.pegar(request.getParameter("emailAntigo"));
			
			String nome = request.getParameter("nome");	
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
			u.setEndereco(request.getParameter("endereco"));
			
			u.setNome(nome);
			
			System.out.println(request.getParameter("cidade"));
			
			Date data;
			data = fmt.parse(dataNascimento);
			u.setDataNascimento(data);			
			try {
				if (u.editar(u)) {
					request.getRequestDispatcher("index2.jsp").forward(request, response);				
				} else {
					request.getRequestDispatcher("cadastroUsuario.jsp").forward(request, response);
				}
			}	catch (IOException e) {
				e.printStackTrace();
			}
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
	}

}
