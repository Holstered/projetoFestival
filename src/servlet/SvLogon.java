package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Funcionario;
import controle.Usuario;

@WebServlet("/SvLogon")
public class SvLogon extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SvLogon() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		Usuario u = new Usuario();
		Funcionario f = new Funcionario();
		
		if(email.equals("admin@admin.com") && senha.equals("admin")) {
			request.getRequestDispatcher("indexADM.jsp").forward(request, response);
		}else {
			if(u.login(email, senha)) {
				request.setAttribute("categoria","usuario");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else {
				if(f.login(email, senha)) {
					request.setAttribute("categoria","funcionario");
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}else {
					request.setAttribute("categoria","erro");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			}
		}
	}

}
