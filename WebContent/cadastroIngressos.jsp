<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Ingressos</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
</head>
<body style="background-color: black;">
	
	<main>
		<div align="center" class="text-light" style="margin-top: 30px;">
			<h1>
				Cadastro Ingresso
			</h1>
		<form action="SvCadastroIngresso" method="post">
		<div class="w-50 p-3" style="margin-top: 30px;">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Categoria</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="categoria">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Valor</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="valor">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Quantidade</label>
			<div class="col-sm-10">
				<input type="number" class="form-control" name="qtd">
			</div>
		</div>
		<fieldset class="form-group">
	    <div class="form-group row">
	      <label class="col-form-label col-sm-2 pt-0">Meia Entrada</label>
	      <div class="col-sm-10">
	        <div class="form-check">
	          <input class="form-check-input" type="radio" name="meiaEntrada" id="gridRadios1" value="true">
	          <label class="form-check-label" for="gridRadios1">
	            Sim
	          </label>
	        </div>
	        <div class="form-check">
	          <input class="form-check-input" type="radio" name="meiaEntrada" id="gridRadios2" value="false">
	          <label class="form-check-label" for="gridRadios2">
	            Não
	          </label>
	        </div>
	      </div>
	    </div>
	  </fieldset>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Dia</label>
			<div class="col-sm-10">
				<select name="dia" class="form-control">
					<option value="1">Dia 1</option>
					<option value="2">Dia 2</option>
					<option value="3">Dia 3</option>
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
<script src="js/bootstrap.bundle.js"></script>
<script src="Jquery/jquery-3.6.0.min.js"></script>
</html>