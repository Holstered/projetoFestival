package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controle.Mensagem;

@WebServlet("/SvResponderMsg")
public class SvResponderMsg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SvResponderMsg() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("mensagem.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String msg = request.getParameter("mensagem");
		
		Mensagem m = new Mensagem();
		
		m.escreverMsg("E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\"+request.getParameter("cpf")+".txt", msg+";2");
		
		String ler = m.lerUltimaLinha("E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\"+request.getParameter("cpf")+".txt");
		
		String ler2 = m.ultimaLinhaSplit(ler);
		
		m = m.pegar("E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\"+request.getParameter("cpf")+".txt");
		
		m.setStatus("resolvido");
		
		m.editar(m);
		
		response.setContentType("text/html;charset=UTF-8");

		response.getWriter().write(ler2);
	}

}
