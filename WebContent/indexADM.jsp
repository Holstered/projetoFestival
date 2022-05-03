<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="controle.Funcionario"%>
<%@ page import="controle.Usuario"%>
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
</head>
<body style="background-color: black;">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark py-4 nav-fill">
  <a class="navbar-brand" href="index2.jsp" style="font-size: 30px;" target="iframe_principal">Festival de Rock</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
				      
				        <a class="nav-item nav-link mr-auto" style="font-size: 23px; color: grey;" href="cadastroIngressos.jsp" target="iframe_principal">Cadastrar Ingressos</a>
				      
				        <a class="nav-item nav-link mr-auto" style="font-size: 23px; color: grey;" href="cadastroBandas.jsp" target="iframe_principal">Cadastrar Bandas</a>
				      
				        <a class="nav-item nav-link mr-auto" style="font-size: 23px; color: grey;" href="cadastroFuncionario.jsp" target="iframe_principal">Cadastrar Funcionario</a>
				        
				        <a class="nav-item nav-link mr-auto" style="font-size: 23px; color: grey;" href="caixa.jsp" target="iframe_principal">Caixa</a>
				        
				         <a class="nav-item nav-link mr-auto" style="font-size: 23px; color: grey;" href="pagamentoFuncionario.jsp" target="iframe_principal">Pagamento Funcionários</a>
				        
				      <ul class="nav navbar-right" style="font-size: 23px;">
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Admin</a>
						<div class="dropdown-menu dropdown-menu-right" style="width: 20px;">
							<a class="dropdown-item" href="login.jsp"><button id="botao1" style="outline: none; border: none; background-color: transparent; cursor: pointer;">Sair</button></a>
						</div></li>
						</ul>
					
			</div>
	</nav>
	
	<main style="height: 790px;">
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
</body>
<script>
</script>
</html>