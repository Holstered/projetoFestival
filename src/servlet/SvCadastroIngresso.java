package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Ingresso;

@WebServlet("/SvCadastroIngresso")
public class SvCadastroIngresso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SvCadastroIngresso() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String categoria = request.getParameter("categoria");
		double valor = Double.parseDouble(request.getParameter("valor"));
		boolean meiaEntrada = Boolean.parseBoolean(request.getParameter("meiaEntrada"));
		String dia = request.getParameter("dia");
		int qtd = Integer.parseInt(request.getParameter("qtd"));
		
		Ingresso i = new Ingresso();
		
		i.setStatus("disponivel");		
		i.setCategoria(categoria);
		i.setDia(dia);
		i.setMeiaEntrada(meiaEntrada);
		i.setValor(valor);
		
		if(i.cadastrarVarios(i, qtd)) {
			request.getRequestDispatcher("index2.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}

}
