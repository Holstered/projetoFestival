package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Caixa;
import controle.Pagamento;

@WebServlet("/SvPagarFuncionario")
public class SvPagarFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SvPagarFuncionario() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("paginaPraPagarAlguem.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String mes = request.getParameter("mes");
		String ano = request.getParameter("ano");
		String cpf = request.getParameter("cpf");
		double valor = Double.parseDouble(request.getParameter("valor"));
		
		Caixa cx = new Caixa();
		
		cx = cx.pegar();
		
		double valorGasto = cx.getPerda();
		double aux = valorGasto+valor;
		double valorTotal = cx.getTotal();
		double aux2 = valorTotal-valor;
		
		cx.setPerda(aux);
		cx.setTotal(aux2);
		
		cx.editar(cx);
		
		System.out.println(nome);
		System.out.println(mes);
		System.out.println(ano);
		System.out.println(cpf);
		System.out.println(valor);
		
		Pagamento p = new Pagamento();
		
		p.setAno(ano);
		p.setCpf(cpf);
		p.setMes(mes);
		p.setNome(nome);
		p.setValor(valor);
		
		if(p.cadastrar(p)) {
			request.getRequestDispatcher("index2.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("pagamentoFuncionario.jsp").forward(request, response);
		}
	}

}
