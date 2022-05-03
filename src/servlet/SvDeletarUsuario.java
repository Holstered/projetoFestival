package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Usuario;

@WebServlet("/SvDeletarUsuario")
public class SvDeletarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SvDeletarUsuario() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
		Usuario u = new Usuario();
		
		u = u.pegar(email);
		
		u.deletar(u);
		
		request.getRequestDispatcher("index.html").forward(request, response);
	}

}
