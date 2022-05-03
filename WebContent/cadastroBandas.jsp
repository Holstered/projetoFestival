<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Bandas</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/chatBox.css" media="screen" />
	<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
	<script src="js/bootstrap.bundle.js"></script>
</head>
<body style="background-color: black;">
<main>
<div align="center" class="text-light" style="margin-top: 30px;">
			<h1>
				Cadastro Bandas
			</h1>
		<form action="SvCadastroBandas" method="post">
		<div class="w-50 p-3" style="margin-top: 30px;">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Nome</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="nome">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Cache</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="cache">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Status</label>
			<div class="col-sm-10">
				<select name="status" class="form-control">
					<option value="principal">Principal</option>
					<option value="secundario">Secundario</option>
					<option value="terceario">Terceario</option>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Dia</label>
			<div class="col-sm-10">
				<select name="dia" class="form-control">
					<option value="dia 1">Dia 1</option>
					<option value="dia 2">Dia 2</option>
					<option value="dia 3">Dia 3</option>
				</select>
			</div>
		</div>
		<button type="submit" class="btn btn-secondary">Cadastrar</button>
		</div>
		</div>
		</div>
		</form>
		</div>
		</main>
</body>
</html>