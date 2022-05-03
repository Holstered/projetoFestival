<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controle.Funcionario"%>
<%@ page import="controle.Usuario"%>
<%@ page import="controle.Mensagem"%>
<%@ page import="java.util.ArrayList"%>    
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
	<script>
	function verificarAlgo(id){
			var cpf = document.getElementById(id);

			cpf.name = "cpf";
		}
</script>
</head>
<body style="background-color: black;">
	<% 
		Mensagem mensagem = new Mensagem();
		Usuario usuario = new Usuario();
		
		ArrayList<String> listaNomes = new ArrayList<String>();
		
		listaNomes = mensagem.mensagemPendente();
	%>
	<div class="text-light" align="center">
	<h1>Mensagens Pendentes</h1>
	</div>
	<div align = "center">
	<div class="w-50 p-3" style="margin-top: 30px;">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
	<form action="SvResponderMsg" method="get">
		<%
			if(listaNomes == null){
				
			}else{
				for(int i = 0; i < listaNomes.size(); i++){
					out.println(listaNomes.get(i));
					usuario = usuario.pegarPorNome(listaNomes.get(i));
					%>
						<input type="text" id="<%=usuario.getCpf()%>" name="" value="<%=usuario.getCpf()%>" hidden="true">
						<button class="btn btn-dark" onclick="verificarAlgo('<%=usuario.getCpf()%>')">Ver</button>
						<p>
						</p>
					<% 
				}
			}
		%>
	</form>
	</div>
	</div>	
	</div>
	</div>
</body>
</html>