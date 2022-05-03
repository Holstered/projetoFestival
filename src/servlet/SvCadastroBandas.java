package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Artista;
import controle.Caixa;

@WebServlet("/SvCadastroBandas")
public class SvCadastroBandas extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public SvCadastroBandas() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String status = request.getParameter("status");
		String dia = request.getParameter("dia");
		Double cache = Double.parseDouble(request.getParameter("cache"));
		
		Artista a = new Artista();
		Caixa cx = new Caixa();
		
		cx = cx.pegar();
		
		double valorGasto = cx.getPerda();
		double aux = valorGasto+cache;
		double valorTotal = cx.getTotal();
		double aux2 = valorTotal-cache;
		
		cx.setPerda(aux);
		cx.setTotal(aux2);
		
		cx.editar(cx);
		
		a.setCache(cache);
		a.setDia(dia);
		a.setNome(nome);
		a.setStatus(status);
		
		if(a.cadastrar(a)) {
			request.getRequestDispatcher("index2.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("cadastroBandas.jsp").forward(request, response);
		}
	}

}
