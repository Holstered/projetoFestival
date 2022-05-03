<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado da compra</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: black;">
	<div class="text-light">
	<%
		String disponibilidade = null;
		
	disponibilidade = (String)request.getAttribute("disponibilidade");
	
	if(disponibilidade.equals("total")){
		%>
		<h1>
			Parabéns, você conseguiu comprar seu ingresso :)
		</h1>
		<% 
	}else{
		if(disponibilidade.equals("nenhuma")){
			%>
			<h1>
				Que pena, os ingressos acabaram :(
			</h1>
			<% 
		}
	}
	
	%>
	</div>
</body>
<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
<script src="js/bootstrap.bundle.js"></script>
</html>