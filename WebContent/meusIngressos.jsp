<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList"%>
    <%@ page import="controle.Usuario"%>
    <%@ page import="controle.Ingresso"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/chatBox.css" media="screen" />
	<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
	<script src="js/bootstrap.bundle.js"></script>
	</head>
<body style="background-color: black;">
<%
	Ingresso in = new Ingresso();
	Usuario u = new Usuario();
	
	u = u.pegar(request.getParameter("email"));
	
	ArrayList<String> listaCategoria = new ArrayList<String>();
	ArrayList<String> listaDia = new ArrayList<String>();
	ArrayList<Double> listaValor = new ArrayList<Double>();
	ArrayList<Double> listaCodigo = new ArrayList<Double>();
	
	listaCategoria = in.listaCategoria(u.getCpf());
	listaDia = in.listaDia(u.getCpf());
	listaCodigo = in.listaCodigo(u.getCpf());
	listaValor = in.listaValor(u.getCpf());
%>
<div align = "center">
	<h1 class="text-light" style="margin-top: 50px;">Meus Ingressos</h1>
	<div class="w-50 p-3" style="margin-top: 30px;">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Categoria</th>
      <th scope="col">Dia</th>
      <th scope="col">Código</th>
      <th scope="col">Valor</th>
    </tr>
  </thead>
  <tbody>
  <% 
  	if(listaCodigo != null){
  		for(int i = 0; i < listaCodigo.size(); i++){
  %>
    <tr>
      <th scope="row"><%=i+1 %></th>
      <td><%=listaCategoria.get(i) %></td>
      <td><%=listaDia.get(i) %></td>
      <td><%=listaCodigo.get(i) %></td>
      <td><%=listaValor.get(i) %></td>
    </tr>
   <% 
  		}
  	}else{
  		 %>
  	    <tr>
  	      <th scope="row">1</th>
  	      <td>-</td>
  	      <td>-</td>
  	      <td>-</td>
  	    </tr>
  	   <% 
  	}
   %>
  </tbody>
</table>
</div>
</div>
</div>
</div>
</body>
</html>