<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagar</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/chatBox.css" media="screen" />
	<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
	<script src="js/bootstrap.bundle.js"></script>
</head>
<body style="background-color: black;">
	<div align = "center">
	<div class="w-50 p-3" style="margin-top: 30px;">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
		<form action="SvPagarFuncionario" method="post">
			<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Nome</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="nome" value="<%=request.getParameter("nome") %>">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">CPF</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="cpf" value="<%=request.getParameter("cpf") %>">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Valor</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="valor" value="<%=request.getParameter("salario") %>">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Mês</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="mes">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Ano</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="ano">
			</div>
		</div>
		<button type="submit" class="btn btn-secondary">Pagar</button>
		</form>
	</div>
	</div>
	</div>
	</div>
</body>
</html>