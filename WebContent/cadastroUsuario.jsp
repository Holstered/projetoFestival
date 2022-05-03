<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang=”pt-br”>
<head>
<meta charset="utf-8">
<title>Cadastro</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
</head>
<body style="background-color: black;">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark py-4">
  <a class="navbar-brand" href="index.html" style="font-size: 30px;">Festival de Rock</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
</nav>
<main>
	<div align="center" style="margin-top: 20px">
	<h1 class="text-light">
		Detalhes da conta
	</h1>
	<form action="SvCadastroUsuario" method="post" id="form_id">
	<div class="w-50 p-3">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
  <div class="form-group row">
    <label  class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-10">
    <input type="email" class="form-control" name="email" id="email" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Senha</label>
    <div class="col-sm-10">
    <input type="password" class="form-control" name="senha" id="senha" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Confirmar Senha</label>
    <div class="col-sm-10">
    <input type="password" class="form-control" id="confirmarSenha" required>
    </div>
  </div>
  </div>
	</div>
	</div>
	<h1 class="text-light">
		Seus detalhes
	</h1>
	<div class="w-50 p-3">
	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="text-dark">
  	<div class="form-group row">
    <label class="col-sm-2 col-form-label">Nome</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="nome" id="nome" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Sobrenome</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="sobrenome" id="sobrenome" required>
    </div>
  </div>
  <fieldset class="form-group">
    <div class="row">
      <label class="col-form-label col-sm-2 pt-0">Sexo</label>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="sexo" id="gridRadios1" value="masculino">
          <label class="form-check-label" for="gridRadios1">
            Masculino
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="sexo" id="gridRadios2" value="feminino">
          <label class="form-check-label" for="gridRadios2">
            Feminino
          </label>
        </div>
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Data Nascimento</label>
    <div class="col-sm-10">
    <input type="date" class="form-control"name="dataNascimento" id="dataNascimento" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">CPF</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="cpf" id="cpf" onblur="formatarCPF(this)" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Identidade</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"name="idt" id="idt" onblur="formatarRG(this)" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Telefone</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="tel" id="tel" onblur="mascaraDeTelefone(this)" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Estado</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="estado" id="estado" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Cidade</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="cidade" id="cidade" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">CEP</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="cep" id="cep" onblur="formatarCEP(this)" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Endereço</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="endereco" id="endereco" required>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label">Complemento</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="complemento" id="complemento" required>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 col-form-label">Foto</label>
    <div class="col-sm-10">
    <input type="file" class="form-control" name="foto" id="foto">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
      <label class="form-check-label" for="invalidCheck2">
        Concordo com os termos e condições
      </label>
    </div>
  </div>
  </div>
	</div>
	</div>
	<button type="submit" class="btn btn-secondary"  onclick="validar()" style="margin-top: -20px;">Cadastrar</button>
	</form>
	</div>
	</main>
	<footer class="bg-dark text-center">
		<div class="text-center p-3 bg-dark text-center" style="text-align:center; width:1925px; margin-top: 40px;">
			<div class="text-light">© 2021 Copyright: Todos os direitos reservados ao Festival de Rock</div>
		</div>
	</footer>
</body>
<script src="js/bootstrap.bundle.js"></script>
<script src="Jquery/jquery-3.6.0.min.js"></script>
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
</html>