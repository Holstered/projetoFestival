<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="controle.Caixa"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Caixa</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/estilo.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="css/chatBox.css"
	media="screen" />
<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
<script src="js/bootstrap.bundle.js"></script>
</head>
<body style="background-color: black;">
<%
	Caixa cx = new Caixa();

	cx = cx.pegar();
	
	double ganho = cx.getGanho();
	double perda = cx.getPerda();
	double total = ganho - perda;
%>
	<div class="text-light" align="center" style="margin-top: 50px;">
		<h1>Caixa</h1>
	</div>
	<div class="text-dark" align="center">
		<div class="card-deck" style="margin-top: 50px; width: 50%;"
			align="center">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Ganhos</h5>
					<p class="card-text" style="color: green;">+ R$<%=ganho%></p>
				</div>
				<div class="card-footer"></div>
			</div>
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Gastos</h5>
					<p class="card-text" style="color: red;">- R$<%=perda%></p>
				</div>
				<div class="card-footer"></div>
			</div>
		</div>
		<div class="card-deck" style="margin-top: 50px; width: 50%;"
			align="center">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Total</h5>
					<%
						if(total > 0){
							%>
								<p class="card-text" style="color: green;">R$<%=total%></p>
							<%
						}else{
							if(total == 0){
								%>
								<p class="card-text" style="color: black;">R$<%=total%></p>
								<%
							}else{
								%>
								<p class="card-text" style="color: red;">R$<%=total%></p>
								<%
							}
						}
					%>
				</div>
				<div class="card-footer"></div>
			</div>
		</div>
	</div>
</body>
</html>