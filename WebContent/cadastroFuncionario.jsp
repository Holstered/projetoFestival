<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Funcionario</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/chatBox.css" media="screen" />
	<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script>

	function validar(){
		   var nome = document.getElementById("nome").value;
		   var sobrenome = document.getElementById("sobrenome").value;
		   var cpf = document.getElementById("cpf").value;
		   var tel = document.getElementById("tel").value;
		   var senha = document.getElementById("senha").value;
		   var confirmarSenha = document.getElementById("confirmarSenha").value;
		   var data = document.getElementById("dataNascimento").value;
		   var email = document.getElementById("email").value;
		   var idt = document.getElementById("idt").value;
		   
		   var padrao = /[^a-zà-ú ]/igm;
		   var valida_nome = nome.match(padrao);
	
		   if( valida_nome || !nome ){
			   alert("Não foi possível realizar cadastro: Nome incorreto");
			   document.getElementById("form_id").action = "cadastroUsuario.jsp";
		   }else{
			   if(cpf.toString().length != 14){
				   alert("Não foi possível realizar cadastro: CPF incorreto");
				   document.getElementById("form_id").action = "cadastroUsuario.jsp";
						if(cpf.charAt(3) != '.'){
							alert("Não foi possível realizar cadastro: CPF incorreto");
							document.getElementById("form_id").action = "cadastroUsuario.jsp";
							}
						else{
							if(cpf.charAt(7) != '.'){
								alert("Não foi possível realizar cadastro: CPF incorreto");
								document.getElementById("form_id").action = "cadastroUsuario.jsp";
								}
							else{
								if(cpf.charAt(11) != '-'){
									alert("Não foi possível realizar cadastro: CPF incorreto");
									document.getElementById("form_id").action = "cadastroUsuario.jsp";
									
								}
							}
					   }
			   }else{
				   if(tel.toString().length < 13 || tel.toString().length > 14){
					   alert("Não foi possível realizar cadastro: Telefone incorreto");
					   document.getElementById("form_id").action = "cadastroUsuario.jsp";
					   if(tel.toString().length == 13){
						   if(tel.charAt(0) != '('){
								alert("Não foi possível realizar cadastro: CPF incorreto");
								document.getElementById("form_id").action = "cadastroUsuario.jsp";
								}
							else{
								if(cpf.charAt(3) != ')'){
									alert("Não foi possível realizar cadastro: CPF incorreto");
									document.getElementById("form_id").action = "cadastroUsuario.jsp";
									}
								else{
									if(cpf.charAt(9) != '-'){
										alert("Não foi possível realizar cadastro: CPF incorreto");
										document.getElementById("form_id").action = "cadastroUsuario.jsp";
										
									}
								}
						   }
					   }else{
						   if(tel.charAt(0) != '('){
								alert("Não foi possível realizar cadastro: CPF incorreto");
								document.getElementById("form_id").action = "cadastroUsuario.jsp";
								}
							else{
								if(cpf.charAt(3) != ')'){
									alert("Não foi possível realizar cadastro: CPF incorreto");
									document.getElementById("form_id").action = "cadastroUsuario.jsp";
									}
								else{
									if(cpf.charAt(8) != '-'){
										alert("Não foi possível realizar cadastro: CPF incorreto");
										document.getElementById("form_id").action = "cadastroUsuario.jsp";
										
									}
								}
						   }
						   }
				   }else{
					   if(email == "" || email == null){
						   alert("Não foi possível realizar cadastro: Email incorreto");
						   document.getElementById("form_id").action = "cadastroUsuario.jsp";
					   }else{
						   if(data == "" || data == null){
							   alert("Não foi possível realizar cadastro: Data de Nascimento incorreto");
							   document.getElementById("form_id").action = "cadastroUsuario.jsp";
						   }else{
							   if(idt == "" || idt == null){
								   alert("Não foi possível realizar cadastro: Identidade incorreto");
								   document.getElementById("form_id").action = "cadastroUsuario.jsp";
							   }else{
									if(senha == "" || senha == null){
											alert("Não foi possível realizar cadastro: Senha incorreto");
											document.getElementById("form_id").action = "cadastroUsuario.jsp";
										
									}else{
										if(valida_nome || !sobrenome ){
										    alert("Não foi possível realizar cadastro: Sobrenome incorreto");
											document.getElementById("form_id").action = "cadastroUsuario.jsp";
										}else{
											if(senha != confirmarSenha){
												alert("Não foi possível realizar cadastro: Senha incorreto");
												document.getElementById("form_id").action = "cadastroUsuario.jsp";
											}else{
												if(cpf.charAt(3) != '.'){
													alert("Não foi possível realizar cadastro: CPF incorreto");
													document.getElementById("form_id").action = "cadastroUsuario.jsp";
													}
												else{
													if(cpf.charAt(7) != '.'){
														alert("Não foi possível realizar cadastro: CPF incorreto");
														document.getElementById("form_id").action = "cadastroUsuario.jsp";
														}
													else{
														if(cpf.charAt(11) != '-'){
															alert("Não foi possível realizar cadastro: CPF incorreto");
															document.getElementById("form_id").action = "cadastroUsuario.jsp";
															
														}
													}
											   }
											}
										}
									}
							   }
						   }
					   }
				   }
			   }
		    }
		}
	
	function mascaraDeTelefone(telefone){
	    const textoAtual = telefone.value;
	    const isCelular = textoAtual.length === 11;
	    let textoAjustado;
	    if(isCelular) {
	    	textoAjustado = textoAtual.replace(/(\d{2})(\d{5})(\d{4})/,
                    function( regex, arg1, arg2, arg3) {
                    return "(" + arg1 + ")"+ arg2 + '-' + arg3 ;
                    });
    		telefone.value = textoAjustado;        
	    } else {
	    	textoAjustado = textoAtual.replace(/(\d{2})(\d{4})(\d{4})/,
                    function( regex, arg1, arg2, arg3) {
                    return "(" + arg1 + ")"+ arg2 + '-' + arg3 ;
                    });
    		telefone.value = textoAjustado;
	    }
	    telefone.value = textoAjustado;
	}

	function formatarCPF(cpf) {
		const textoAtual = cpf.value;
	    let textoAjustado;
	    textoAjustado = textoAtual.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/,
                    function( regex, arg1, arg2, arg3, arg4) {
                    return arg1 + "."+ arg2 + "." + arg3 + "-" + arg4;
                    });
	    cpf.value = textoAjustado;
	}

	function formatarCEP(cep) {
		const textoAtual = cep.value;
	    let textoAjustado;
	    textoAjustado = textoAtual.replace(/(\d{5})(\d{3})/,
                    function( regex, arg1, arg2) {
                    return arg1 + "-"+ arg2;
                    });
	    cep.value = textoAjustado;
	}

	function formatarRG(idt) {
		const textoAtual = idt.value;
	    let textoAjustado;
	    textoAjustado = textoAtual.replace(/(\d{2})(\d{3})(\d{3})(\d{1})/,
                    function( regex, arg1, arg2, arg3, arg4) {
	    			return arg1 + "."+ arg2 + "." + arg3 + "-" + arg4;
                    });
	    idt.value = textoAjustado;
	}
</script>
</head>
<body style="background-color: black;">
	<div align="center" class="text-light" style="margin-top: 30px;">
			<h1>
				Cadastro Funcionario
			</h1>
		<form action="SvCadastrarFuncionario" method="POST">
		<div class="w-50 p-3" style="margin-top: 30px;">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Nome</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="nome" id="nome" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Sobrenome</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="sobrenome" id="sobrenome" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Email</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="email" id="email" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Senha</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" name="senha" id="senha" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Confirma Senha</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" name="confirmarSenha" id="confirmarSenha" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Data de Nascimento</label>
			<div class="col-sm-10">
				<input type="date" class="form-control" name="dataNascimento" id="dataNascimento" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">CPF</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="cpf" id="cpf" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Identidade</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="idt" id="idt" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Telefone</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="tel" id="tel" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Endereço</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="endereco" id="endereco" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Salario</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="salario" id="salario" required>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-form-label col-sm-2 pt-0">Função</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="funcao" id="funcao" required>
			</div>
		</div>
		</div>
		<button type="submit" class="btn btn-secondary">Cadastrar</button>
		</div>
		</div>
		</form>
		</div>
</body>
</html>