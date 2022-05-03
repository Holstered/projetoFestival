<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controle.Artista"%>
<%@ page import="java.util.ArrayList"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lineup</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
	<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
	<script src="js/bootstrap.bundle.js"></script>
</head>
<body style="background-color: black;">
			<%
				Artista a = new Artista();
				ArrayList<String> listaArtista = new ArrayList<String>();
			%>
	<div align="center" class="text-light">
	<div style="margin-top: 100px;">
		<h1>Dia 1</h1>
			<% 
			listaArtista = a.pedidoArtista("dia 1", "principal");
			if(listaArtista != null){
				for(int i = 0; i<listaArtista.size(); i++){
						%>
							<h2><%=listaArtista.get(i) %></h2>
						<%
					}
				}
			%>
			<%
			listaArtista = a.pedidoArtista("dia 1", "secundario");
			if(listaArtista != null){
				for(int i = 0; i<listaArtista.size(); i++){
						%>
							<h4><%=listaArtista.get(i) %></h4>
						<%
					}
				}
			%>
			<%
			listaArtista = a.pedidoArtista("dia 1", "terceario");
			if(listaArtista != null){
				for(int i = 0; i<listaArtista.size(); i++){
						%>
							<h6><%=listaArtista.get(i) %></h6>
						<%
					}
				}
			%>
	</div>
	<div style="margin-top: 100px;">
		<h1>Dia 2</h1>
			<% 
			listaArtista = a.pedidoArtista("dia 2", "principal");
			if(listaArtista != null){
				for(int i = 0; i<listaArtista.size(); i++){
						%>
							<h2><%=listaArtista.get(i) %></h2>
						<%
					}
				}
			%>
			<%
			listaArtista = a.pedidoArtista("dia 2", "secundario");
			if(listaArtista != null){
				for(int i = 0; i<listaArtista.size(); i++){
						%>
							<h4><%=listaArtista.get(i) %></h4>
						<%
					}
				}
			%>
			<%
			listaArtista = a.pedidoArtista("dia 2", "terceario");
			if(listaArtista != null){
				for(int i = 0; i<listaArtista.size(); i++){
						%>
							<h6><%=listaArtista.get(i) %></h6>
						<%
					}
				}
			%>
	</div>
	<div style="margin-top: 100px;">
	<h1>Dia 3</h1>
			<% 
			listaArtista = a.pedidoArtista("dia 3", "principal");
			if(listaArtista != null){
				for(int i = 0; i<listaArtista.size(); i++){
						%>
							<h2><%=listaArtista.get(i) %></h2>
						<%
					}
				}
			%>
			<%
			listaArtista = a.pedidoArtista("dia 3", "secundario");
			if(listaArtista != null){
				for(int i = 0; i<listaArtista.size(); i++){
						%>
							<h4><%=listaArtista.get(i) %></h4>
						<%
					}
				}
			%>
			<%
			listaArtista = a.pedidoArtista("dia 3", "terceario");
			if(listaArtista != null){
				for(int i = 0; i<listaArtista.size(); i++){
						%>
							<h6><%=listaArtista.get(i) %></h6>
						<%
					}
				}
			%>
	</div>
	</div>
</body>
</html>