<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="controle.Funcionario"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagar Funcionario</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/chatBox.css" media="screen" />
	<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script>
	function verificarAlgo(nome,cpf,salario){
			var cpf = document.getElementById(cpf);
			var nome = document.getElementById(nome);
			var salario = document.getElementById(salario);

			cpf.name = "cpf";
			nome.name = "nome";
			salario.name = "salario";
		}
	
</script>
</head>
<body style="background-color: black;">
	<% 
		Funcionario funcionario = new Funcionario();
		
		ArrayList<String> listaNomes = new ArrayList<String>();
		
		listaNomes = funcionario.buscaFuncionarios();
	%>
	<div class="text-light" align="center">
	<h1>Pagar Funcionário</h1>
	</div>
	<div align = "center">
	<div class="w-50 p-3" style="margin-top: 30px;">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
		<%
			if(listaNomes == null){
				
			}else{
				for(int i = 0; i < listaNomes.size(); i++){
					out.println(listaNomes.get(i));
					funcionario = funcionario.pegarPorNome(listaNomes.get(i));
					%>
					<form action="SvPagarFuncionario" method="get">
						<input type="text" id="<%=funcionario.getNome()%>" name="" value="<%=funcionario.getNome()%>" hidden="true">
						<input type="text" id="<%=funcionario.getCpf()%>" name="" value="<%=funcionario.getCpf()%>" hidden="true">
						<input type="text" id="<%=funcionario.getSalario()%>" name="" value="<%=funcionario.getSalario()%>" hidden="true">
						<button class="btn btn-dark" data-toggle="modal" data-target="#exampleModal" onclick="verificarAlgo('<%=funcionario.getNome()%>','<%=funcionario.getCpf()%>','<%=funcionario.getSalario()%>')">Pagar</button>
						<p>
						</p>
					</form>
					<% 
				}
			}
		%>
	</div>
	</div>	
	</div>
	</div>
</body>
</html>