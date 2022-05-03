<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="screen" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="Jquery/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.bundle.js"></script>
</head>
<body style="background-color: black;">
	<%
		String categoria = null;
		categoria = (String)request.getAttribute("categoria");
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark py-4">
  <a class="navbar-brand" href="index.html" style="font-size: 30px;">Festival de Rock</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
</nav>
	<main>
	<div align="center" style="margin-top: 200px">
	<h1 class="text-light">
		Login
	</h1>
	<div class="w-50 p-3">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<form action="SvLogon" method="post">
	<div class="text-dark">
	<div class="form-group row">
    <div class="col-sm-12">
      <label for="inputEmail3" hidden>Nome:</label><input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email" required>
    </div>
    <div style="color:red;" class="col-sm-12" id="ip2"></div>
  </div>
  <div class="form-group row">
    <div class="col-sm-12">
      <label for="inputPassword3" hidden>Nome:</label><input type="password" class="form-control" id="inputPassword3" placeholder="Senha" name="senha" required>
    </div>
  </div>
  <% 
  if(categoria == null){
	  
  }else{
	out.println("<div style='color: red;'>Usuário ou Senha incorretos</div>");
  }
  %>
  <div>
  	<a href="cadastroUsuario.jsp">Cadastre-se</a>
  </div>
  <br>
  <div class="form-group row">
    <div class="col-sm-12">
      <button type="submit" class="btn btn-primary">Entrar</button>
    </div>
  </div>
  </div>
</form>
	</div>
	</div>
	</div>
	</main>
	<footer class="text-center text-lg-start bg-dark text-muted" style="margin-top: 400px;">
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
</html>