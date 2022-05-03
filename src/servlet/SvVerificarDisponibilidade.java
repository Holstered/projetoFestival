package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Ingresso;

@WebServlet("/SvVerificarDisponibilidade")
public class SvVerificarDisponibilidade extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SvVerificarDisponibilidade() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String categoria = request.getParameter("categoria");
		String dia = request.getParameter("dia");
		String meiaEntrada = request.getParameter("meiaEntrada");
		
		Ingresso in = new Ingresso();
		
		ArrayList<Double> lista = in.localizarIngresso(categoria, meiaEntrada, dia);
		
		if(lista == null) {
			request.setAttribute("disponibilidade","nenhuma");
			request.getRequestDispatcher("resultadoIngresso.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("pagamentoIngresso.jsp").forward(request, response);
		}
	}

}
