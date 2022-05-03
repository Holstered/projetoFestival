package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Caixa;
import controle.Ingresso;
import controle.Usuario;

@WebServlet("/SvCompraIngresso")
public class SvCompraIngresso extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public SvCompraIngresso() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String categoria = request.getParameter("categoria");
		String dia = request.getParameter("dia");
		String meiaEntrada = request.getParameter("meiaEntrada");
		String nome = request.getParameter("nome");
		int qtd = Integer.parseInt(request.getParameter("qtd"));
		double valor = Double.parseDouble(request.getParameter("valor"));
		
		double codigo;
		
		Usuario u = new Usuario();
		Ingresso i = new Ingresso();
		Caixa cx = new Caixa();
		
		cx = cx.pegar();
		
		double cxAtual = cx.getGanho();
		double cxTotal = cx.getTotal();
		double valorCompra = valor * qtd;
		double cxGanho = cxAtual + valorCompra;
		
		cxTotal = valorCompra + cxAtual;
		
		cx.setTotal(cxTotal);
		cx.setGanho(cxGanho);
		
		cx.editar(cx);
		
		u = u.pegarPorNome(nome);
		
		ArrayList<Double> lista = i.localizarIngresso(categoria, meiaEntrada, dia);
		
		if(lista==null) {
			request.setAttribute("disponibilidade","nenhuma");
			request.getRequestDispatcher("resultadoIngresso.jsp").forward(request, response);
		}else {
			if(lista.size() < qtd) {
				qtd = lista.size();
				for(int j = 0; j < qtd; j++) {
					codigo = lista.get(j);
					i = i.pegar(codigo);
					i.setCpf(u.getCpf());
					i.mudarStatus(i);
				}
			}else {
				for(int j = 0; j < qtd; j++) {
					codigo = lista.get(j);
					i = i.pegar(codigo);
					i.setCpf(u.getCpf());
					i.mudarStatus(i);
				}
			}
			request.setAttribute("disponibilidade","total");
			request.getRequestDispatcher("resultadoIngresso.jsp").forward(request, response);
		}
				
		
	}

}
