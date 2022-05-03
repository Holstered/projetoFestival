<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comprar Ingresso</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: black;">
<div align="center">
	<%
		String dia = request.getParameter("dia");
		
		String nome = request.getParameter("nome");

	if (dia.equals("1")) {
	%>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 50px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista</h5>
      <p class="card-text">R$200,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form1">
			<input type="text" value="1" name=" " id="d1" hidden="true">
			<input type="text" value="Pista" name=" " id="c1" hidden="true">
			<input type="text" value="0" name=" " id="me1" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="200" name=" " id="valor1" hidden="true"> 
    		<button class="btn btn-secondary" onclick="verificarLogin('d1','c1','me1','form1','valor1')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista Meia-Entrada</h5>
      <p class="card-text">R$100,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form2">
			<input type="text" value="1" name=" " id="d2" hidden="true">
			<input type="text" value="Pista" name=" " id="c2" hidden="true">
			<input type="text" value="1" name=" " id="me2" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">  
			<input type="text" value="100" name=" " id="valor2" hidden="true">
    		<button class="btn btn-secondary" onclick="verificarLogin('d2','c2','me2','form2','valor2')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 100px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Cadeira</h5>
      <p class="card-text">R$250,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form3">
			<input type="text" value="1" name=" " id="d3" hidden="true">
			<input type="text" value="Cadeira" name=" " id="c3" hidden="true">
			<input type="text" value="0" name=" " id="me3" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true"> 
			<input type="text" value="250" name=" " id="valor3" hidden="true"> 
    		<button class="btn btn-secondary" onclick="verificarLogin('d3','c3','me3','form3','valor3')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Cadeira Meia-Entrada</h5>
      <p class="card-text">R$125,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form4">
			<input type="text" value="1" name=" " id="d4" hidden="true">
			<input type="text" value="Cadeira" name=" " id="c4" hidden="true">
			<input type="text" value="1" name=" " id="m4e" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="125" name=" " id="valor4" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d4','c4','me4','form4','valor4')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 100px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista Premium</h5>
      <p class="card-text">R$300,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form5">
			<input type="text" value="1" name=" " id="d5" hidden="true">
			<input type="text" value="Premium" name=" " id="c5" hidden="true">
			<input type="text" value="0" name=" " id="me5" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="300" name=" " id="valor5" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d5','c5','me5','form5','valor5')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista Premium Meia-Entrada</h5>
      <p class="card-text">R$150,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form6">
			<input type="text" value="1" name=" " id="d6" hidden="true">
			<input type="text" value="Premium" name=" " id="c6" hidden="true">
			<input type="text" value="1" name=" " id="me6" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="150" name=" " id="valor6" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d6','c6','me6','form6','valor6')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 100px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Camarote</h5>
      <p class="card-text">R$450,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form7">
			<input type="text" value="1" name=" " id="d7" hidden="true">
			<input type="text" value="Camarote" name=" " id="c7" hidden="true">
			<input type="text" value="0" name=" " id="me7" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="450" name=" " id="valor7" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d7','c7','me7','form7','valor7')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Camarote Meia-Entrada</h5>
      <p class="card-text">R$225,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form8">
			<input type="text" value="1" name=" " id="d8" hidden="true">
			<input type="text" value="Camarote" name=" " id="c8" hidden="true">
			<input type="text" value="1" name=" " id="me8" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="225" name=" " id="valor8" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d8','c8','me8','form8','valor8')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<%
		} else {
	if (dia.equals("2")) {
		%>
		<div style="color: dark;">
		<div class="card-deck" style="margin-top: 50px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista</h5>
      <p class="card-text">R$200,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form9">
			<input type="text" value="2" name=" " id="d9" hidden="true">
			<input type="text" value="Pista" name=" " id="c9" hidden="true">
			<input type="text" value="0" name=" " id="me9" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="200" name=" " id="valor9" hidden="true"> 
    		<button class="btn btn-secondary" onclick="verificarLogin('d9','c9','me9','form9','valor9')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista Meia-Entrada</h5>
      <p class="card-text">R$100,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form10">
			<input type="text" value="2" name=" " id="d10" hidden="true">
			<input type="text" value="Pista" name=" " id="c10" hidden="true">
			<input type="text" value="1" name=" " id="me10" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="100" name=" " id="valor10" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d10','c10','me10','form10','valor10')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 100px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Cadeira</h5>
      <p class="card-text">R$250,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form11">
			<input type="text" value="2" name=" " id="d11" hidden="true">
			<input type="text" value="Cadeira" name=" " id="c11" hidden="true">
			<input type="text" value="0" name=" " id="me11" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="250" name=" " id="valor11" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d11','c11','me11','form11','valor11')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Cadeira Meia-Entrada</h5>
      <p class="card-text">R$125,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form12">
			<input type="text" value="2" name=" " id="d12" hidden="true">
			<input type="text" value="Cadeira" name=" " id="c12" hidden="true">
			<input type="text" value="1" name=" " id="me12" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="125" name=" " id="valor12" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d12','c12','me12','form12','valor12')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 100px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista Premium</h5>
      <p class="card-text">R$300,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form13">
			<input type="text" value="2" name=" " id="d13" hidden="true">
			<input type="text" value="Premium" name=" " id="c13" hidden="true">
			<input type="text" value="0" name=" " id="me13" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true"> 
			<input type="text" value="300" name=" " id="valor13" hidden="true"> 
    		<button class="btn btn-secondary" onclick="verificarLogin('d13','c13','me13','form13','valor13')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista Premium Meia-Entrada</h5>
      <p class="card-text">R$150,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form14">
			<input type="text" value="2" name=" " id="d14" hidden="true">
			<input type="text" value="Premium" name=" " id="c14" hidden="true">
			<input type="text" value="1" name=" " id="me14" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="150" name=" " id="valor14" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d14','c14','me14','form14','valor14')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 100px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Camarote</h5>
      <p class="card-text">R$450,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form15">
			<input type="text" value="2" name=" " id="d15" hidden="true">
			<input type="text" value="Camarote" name=" " id="c15" hidden="true">
			<input type="text" value="0" name=" " id="me15" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="450" name=" " id="valor15" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d15','c15','me15','form15','valor15')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Camarote Meia-Entrada</h5>
      <p class="card-text">R$225,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form16">
			<input type="text" value="2" name=" " id="d16" hidden="true">
			<input type="text" value="Camarote" name=" " id="c16" hidden="true">
			<input type="text" value="1" name=" " id="me16" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="225" name=" " id="valor16" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d16','c16','me16','form16','valor16')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
		<%
	} else {
		if (dia.equals("3")) {
			%>
			<div style="color: dark;">
		<div class="card-deck" style="margin-top: 50px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista</h5>
      <p class="card-text">R$200,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form17">
			<input type="text" value="3" name=" " id="d17" hidden="true">
			<input type="text" value="Pista" name=" " id="c17" hidden="true">
			<input type="text" value="0" name=" " id="me17" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="200" name=" " id="valor17" hidden="true"> 
    		<button class="btn btn-secondary" onclick="verificarLogin('d17','c17','me17','form17','valor17')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista Meia-Entrada</h5>
      <p class="card-text">R$100,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form18">
			<input type="text" value="3" name=" " id="d18" hidden="true">
			<input type="text" value="Pista" name=" " id="18" hidden="true">
			<input type="text" value="1" name=" " id="me18" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="100" name=" " id="valor18" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d18','c18','me18','form18','valor18')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 100px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Cadeira</h5>
      <p class="card-text">R$250,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form19">
			<input type="text" value="3" name=" " id="d19" hidden="true">
			<input type="text" value="Cadeira" name=" " id="c19" hidden="true">
			<input type="text" value="0" name=" " id="me19" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="250" name=" " id="valor19" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d19','c19','me19','form19','valor19')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Cadeira Meia-Entrada</h5>
      <p class="card-text">R$125,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form20">
			<input type="text" value="3" name=" " id="d20" hidden="true">
			<input type="text" value="Cadeira" name=" " id="c20" hidden="true">
			<input type="text" value="1" name=" " id="me20" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="125" name=" " id="valor20" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d20','c20','me20','form20','valor20')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 100px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista Premium</h5>
      <p class="card-text">R$300,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form21">
			<input type="text" value="3" name=" " id="d21" hidden="true">
			<input type="text" value="Premium" name=" " id="c21" hidden="true">
			<input type="text" value="0" name=" " id="me21" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="300" name=" " id="valor21" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d21','c21','me21','form21','valor21')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Pista Premium Meia-Entrada</h5>
      <p class="card-text">R$150,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form22">
			<input type="text" value="3" name=" " id="d22" hidden="true">
			<input type="text" value="Premium" name=" " id="c22" hidden="true">
			<input type="text" value="1" name=" " id="me22" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="150" name=" " id="valor22" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d22','c22','me22','form22','valor22')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
	<div style="color: dark;">
		<div class="card-deck" style="margin-top: 100px;width: 50%;" align="center">
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Camarote</h5>
      <p class="card-text">R$450,00</p>
    </div>
    <div class="card-footer">
    	<form action="SvVerificarDisponibilidade" method="post" id="form23">
			<input type="text" value="3" name="" id="d23" hidden="true">
			<input type="text" value="Camarote" name="" id="c23" hidden="true">
			<input type="text" value="0" name="" id="me23" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="450" name=" " id="valor23" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d23','c23','me23','form23','valor23')">Comprar</button>
    	</form>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Camarote Meia-Entrada</h5>
      <p class="card-text">R$225,00</p>
    </div>
    <div class="card-footer">
    <form action="SvVerificarDisponibilidade" method="post" id="form24">
			<input type="text" value="3" name=" " id="d24" hidden="true">
			<input type="text" value="Camarote" name=" " id="c24" hidden="true">
			<input type="text" value="1" name=" " id="me24" hidden="true">
			<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">
			<input type="text" value="225" name=" " id="valor24" hidden="true">  
    		<button class="btn btn-secondary" onclick="verificarLogin('d24','c24','me24','form24','valor24')">Comprar</button>
    	</form>
    </div>
  </div>
</div>
	</div>
			<%
		}
	}
	}
	%>
	</div>
</body>
<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
<script src="js/bootstrap.bundle.js"></script>
<script>
	function verificarLogin(dia,categoria,meiaEntrada,form, valor){
			var nome = document.getElementById('nome').value;

			if(nome == "null"){
				alert("É necessário estar logado para continuar a compra");
				document.getElementById(form).action = "login.jsp";
				document.getElementById(form).target = "login.jsp";
			}else{
				document.getElementById(dia).name = "dia";
				document.getElementById(categoria).name = "categoria";
				document.getElementById(meiaEntrada).name = "meiaEntrada";
				document.getElementById(valor).name = "valor";
				}
		}
</script>
</html>