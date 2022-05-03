<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ingressos</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
</head>
<body style="background-color: black;">
	<main>
	<%
		String nome = request.getParameter("nome");
	%>
		<div class="card-deck" style="margin-top: 100px; width: 99%; margin-left: 6px;">
  <div class="card">
    <img class="card-img-top" src="imagens/1-dia.png" alt="Imagem de capa do card">
    <div class="card-body">
      <h5 class="card-title">Dia 1</h5>
      <p class="card-text">Compre ingressos para o 1º dia de festival</p>
    </div>
    <div class="card-footer">
    	<form action="comprarIngresso.jsp" method="get">			<input type="text" value="1" name="dia" hidden="true">
			<input type="text" value="<%=nome %>" name="nome" id="nome" hidden="true">  
    		<button class="btn btn-secondary">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="imagens/2-dia.png" alt="Imagem de capa do card">
    <div class="card-body">
      <h5 class="card-title">Dia 2</h5>
      <p class="card-text">Compre ingressos para o 2º dia de festival</p>
    </div>
    <div class="card-footer">
    <form action="comprarIngresso.jsp" method="get">
			<input type="text" value="2" name="dia" hidden="true"> 
			<input type="text" value="<%=nome %>" name="nome" id="nome" hidden="true"> 
    		<button class="btn btn-secondary">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="imagens/3-dia.png" alt="Imagem de capa do card">
    <div class="card-body">
      <h5 class="card-title">Dia 3</h5>
      <p class="card-text">Compre ingressos para o 3º dia de festival</p>
    </div>
    <div class="card-footer">
    <form action="comprarIngresso.jsp" method="get">
			<input type="text" value="3" name="dia" hidden="true">
			<input type="text" value="<%=nome %>" name="nome" id="nome" hidden="true">  
    		<button class="btn btn-secondary">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</main>
</body>
<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
<script src="js/bootstrap.bundle.js"></script>
</html>