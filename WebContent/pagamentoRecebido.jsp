<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controle.Funcionario"%>
<%@ page import="controle.Pagamento"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagamento Recebido</title>
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
	Pagamento p = new Pagamento();
	Funcionario f = new Funcionario();
	
	String emailFuncionario = request.getParameter("email");

	f = f.pegar(emailFuncionario);
	
	ArrayList<String> listaNomes = new ArrayList<String>();
	ArrayList<String> listaCpf = new ArrayList<String>();
	ArrayList<String> listaAno = new ArrayList<String>();
	ArrayList<String> listaMes = new ArrayList<String>();
	ArrayList<Double> listaValor = new ArrayList<Double>();
	
	listaNomes = p.listaNome(f.getCpf());
	listaCpf = p.listaCpf(f.getCpf());
	listaMes = p.listaMes(f.getCpf());
	listaAno = p.listaAno(f.getCpf());
	listaValor = p.listaValor(f.getCpf());
%>
<div align = "center">
	<div class="w-50 p-3" style="margin-top: 30px;">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
	<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Mês</th>
      <th scope="col">Ano</th>
      <th scope="col">Valor</th>
    </tr>
  </thead>
  <tbody>
  <% 
  	if(listaNomes != null){
  		for(int i = 0; i < listaNomes.size(); i++){
  %>
    <tr>
      <th scope="row"><%=i+1 %></th>
      <td><%=listaMes.get(i) %></td>
      <td><%=listaAno.get(i) %></td>
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