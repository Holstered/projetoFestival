<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="controle.Funcionario"%>
<%@ page import="controle.Usuario"%>
<%@ page import="controle.Mensagem"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang=”pt-br”>
<head>
<meta charset="utf-8">
<title>Página Inicial</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/dobova.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/chatBox.css" media="screen" />
	<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script>
	$(document).ready(function() {
		$("#botao").click(function() {
											$.ajax({
														url : 'SvEscreverMensagem',
														type : 'POST',
														data : {mensagem : document.getElementById('i1').value, cpf : document.getElementById('cpfPessoa').value},
														success : function(x) {
															var count = 0;
															var objDiv = document.getElementById("divCorpo");
															objDiv.scrollTop = objDiv.scrollHeight;
															var divPai = $('#mensagens');
															divPai.append("<p class='textoBox' style='background-color: #DCDCDC; direction: rtl; text-align: right;'>"+x+ "</p>");
															var objDiv = document.getElementById("divCorpo");
															objDiv.scrollTop = objDiv.scrollHeight;
															count++;
															document.getElementById("i1").value = "";
														},
														error : function() {
															$(".Linha").text(divPai.append("<div class='textoBox' style='display:table-cell; background-color: grey; margin-bottom: auto; text-align: right;'>erro</div><br>"));
														},

													});
										});

		$('#i1').keypress(function(e) {
			if (e.keyCode == 13)
				$('#botao').click();
		});
		
	});
	</script>
</head>
<body style="background-color: black;">
	<%
	String categoria = null;
	String email = request.getParameter("email");
	
	String nome;
	String nome2;
	
	Funcionario f = new Funcionario();
	Usuario u = new Usuario();
	
	
		categoria = (String)request.getAttribute("categoria");

		if(categoria.equals("funcionario")){
		
		f = f.pegar(request.getParameter("email"));
		
		nome = f.getNome();
		}else{
			if(categoria.equals("usuario")){
				
				u = u.pegar(request.getParameter("email"));
				
				nome2 = u.getNome();
				
				%>
				<input type="text" value="<%=u.getCpf() %>" id="cpfPessoa" hidden="true"> 
				<%
			}
		}
	
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark py-4 nav-fill">
  <a class="navbar-brand" href="index2.jsp" style="font-size: 30px;" target="iframe_principal">Festival de Rock</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
				
					<%
					if(categoria.equals("funcionario")){
						%>
						<a class="nav-item nav-link mr-auto">
				        <form action="pagamentoRecebido.jsp" target="iframe_principal" method="get">
					      	<input type="text" name="email" value="<%=f.getEmail()%>" style="display: none;">
					        <button id="pagamento" style="font-size: 23px; color: grey; border: none; background-color: transparent;cursor: pointer; outline: none;">Pagamentos</button>
					     </form>
				      	</a>
				        <a class="nav-item nav-link mr-auto" style="font-size: 23px; color: grey;" href="visualizarMensagem.jsp" target="iframe_principal">Mensagens</a>
			
				      <ul class="nav navbar-right" style="font-size: 23px;">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="false"><%=f.getNome()%></a>
							<div class="dropdown-menu">
								<form class="dropdown-item" action="editarFuncionario.jsp" target="iframe_principal" method="POST">
									<input type="hidden" name="nome" value="<%=f.getNome()%>" />
									<button
										style="outline: none; border: none; background-color: transparent; cursor: pointer;">Editar</button>
								</form>
								<a class="dropdown-item" href="login.jsp"><button
										style="outline: none; border: none; background-color: transparent; cursor: pointer;">Sair</button></a>
							</div></li>
							</ul>
						<%
					}else{
						if (categoria.equals("usuario")) {
							%>
							<a class="nav-item nav-link mr-auto">
							<form action="lineup.jsp" target="iframe_principal" method="get">					
					        <button style="font-size: 23px; color: grey; border: none; background-color: transparent;cursor: pointer; outline: none;">Lineup</button>
					        </form>
					        </a>
					        
					        <a class="nav-item nav-link mr-auto">
					      	<form action="ingressos.jsp" target="iframe_principal" method="get">
					      	<input type="text" name="nome" value="<%=u.getNome()%>" style="display: none;">
					        <button style="font-size: 23px; color: grey; border: none; background-color: transparent;cursor: pointer; outline: none;">Ingressos</button>
					      	</form>
					      	</a>
					      	
					      	<a class="nav-item nav-link mr-auto">
					      	<form action="sobrenos.html" target="iframe_principal" method="get">
					        <button style="font-size: 23px; color: grey; border: none; background-color: transparent;cursor: pointer; outline: none;">Sobre nós</button>
					        </form>
					        </a>
					        
					        <a class="nav-item nav-link mr-auto">
					        <form action="local.jsp" target="iframe_principal" method="get">
					        <button style="font-size: 23px; color: grey; border: none; background-color: transparent;cursor: pointer; outline: none;">Local</button>
					        </form>
					        </a>
					        
					      <ul class="nav navbar-right" style="font-size: 23px;">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false"><%=u.getNome()%></a>
								<div class="dropdown-menu">
								<form class="dropdown-item" action="meusIngressos.jsp" target="iframe_principal" method="POST">
										<input type="hidden" name="nome" value="<%=u.getNome()%>" />
										<input type="hidden" name="email" value="<%=u.getEmail()%>" />
										<button style="outline: none; border: none; background-color: transparent; cursor: pointer;">Meus Ingressos</button>
									</form>
									<form class="dropdown-item" action="editarUsuario.jsp" target="iframe_principal" method="POST">
										<input type="hidden" name="nome" value="<%=u.getNome()%>" />
										<input type="hidden" name="email" value="<%=u.getEmail()%>" />
										<button style="outline: none; border: none; background-color: transparent; cursor: pointer;">Editar</button>
									</form>
									<form class="dropdown-item" action="SvDeletarUsuario" method="POST">
										<input type="hidden" name="nome" value="<%=u.getNome()%>" />
										<input type="hidden" name="email" value="<%=u.getEmail()%>" />
										<button style="outline: none; border: none; background-color: transparent; cursor: pointer;">Deletar</button>
									</form>
									<a class="dropdown-item" href="login.jsp"><button
											style="outline: none; border: none; background-color: transparent; cursor: pointer;">Sair</button></a>
								</div></li>
								</ul>
							<%
						}
					}	
				%>
			</div>
	</nav>
	
	<main  height="790px">	
			<iframe frameborder="0" src="index2.jsp" height="790px" width="100%" name="iframe_principal"></iframe>
	</main>
	
	<footer class="text-center text-lg-start bg-dark text-muted">
  <section
    class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
  >
    <div class="me-5 d-none d-lg-block">
      <span>Siga-nos nas redes sociais:</span>
    </div>
    <div>
      <a href="" class="me-4 text-reset">
        <i class="fa fa-facebook-f"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fa fa-twitter"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fa fa-youtube"></i>
      </a>
      <a href="" class="me-4 text-reset">
        <i class="fa fa-instagram"></i>
      </a>
    </div>
  </section>
  <section class="">
    <div class="container text-center text-md-start mt-5">
      <!-- Grid row -->
      <div class="row mt-3">
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <!-- Content -->
          <h6 class="text-uppercase fw-bold mb-4">
            <i class="fas fa-gem me-3"></i>Festival de Rock
          </h6>
          <p>
            O festival que vai te deixar de cabelo em pé
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Links
          </h6>
          <p>
            <a href="#!" class="text-reset">Parceiros</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Patrocínios</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Fale Conosco</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Trabalhe Conosco</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
           Links
          </h6>
          <p>
            <a href="#!" class="text-reset">Loja</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Ajuda</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Imprensa</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Política de Privacidade</a>
          </p>
        </div>
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <h6 class="text-uppercase fw-bold mb-4">
            Contato
          </h6>
          <p><i class="fa fa-home me-3"></i> Rio de Janeiro, RJ, Brasil</p>
          <p>
            <i class="fa fa-envelope me-3"></i>
            festivalderock@rock.com
          </p>
          <p><i class="fa fa-phone me-3"></i> + 55 21 99238 8291</p>
          <p><i class="fa fa-print me-3"></i> + 55 21 3029 1022</p>
        </div>
      </div>
    </div>
  </section>
  <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
    © 2021 Copyright:
    <a class="text-reset fw-bold" href="https://festivalderock.com.br/">festivaldorock.com.br</a>
  </div>
</footer>
<%if (categoria.equals("usuario")) { %>
			<div style="
    width: 1000px;
    margin:auto;">
<div style="
    width: 100%;
    background-image: none;
    background-repeat: repeat;
    background-attachment: scroll;
    background-position: 0% 0%;
    position: fixed;
    bottom: 0pt;
    left: 0pt;">
		<input type="checkbox" id="check"> <label class="chat-btn"
			for="check"> <i class="fa fa-commenting-o comment"></i> <i
			class="fa fa-close close"></i>
		</label>
		<div class="wrapper" width="10px">
			<div class="header">
				<h6>Chat</h6>
			</div>
			<div id="divCorpo" class="Linha" style="height: 300px; overflow-y: scroll;">
				<div id="mensagens">
			    <%
					Mensagem m = new Mensagem();
				ArrayList<String> chat = new ArrayList<String>();
				
				if(categoria.equals("funcionario")){
					chat = m.partir("E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\"+f.getCpf()+".txt");
				}else{
					chat = m.partir("E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\"+u.getCpf()+".txt");
				}

				if (chat == null) {
				
					} else {
						int numero;
				for (int i = 0; i < chat.size(); i++) {
						numero = m.numero(i, "E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\"+u.getCpf()+".txt");
						if(numero == 1){
							out.println("<p style='background-color: #DCDCDC; direction: rtl; text-align: right;'>" + chat.get(i)+ "</p>");
						}else{
							if(numero == 2){
							out.println("<p style='background-color: #cce6ff; direction: rtl; text-align: left;'>" + chat.get(i)+ "</p>");
							}
						}
					}
				}
				%>
				</div>
			</div>
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="digite" id="i1" onfocus="this.value='';">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button" id="botao" style="color: white;">>></button>
				</div>
			</div>
		</div>
	</div>
	</div>
			<%}%>
</body>
</html>