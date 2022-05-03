<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="controle.Usuario"%>
    <%@ page import="controle.Ingresso"%>
    <%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pagamento</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
	<script>

	function validar(){
		   var numero = document.getElementById("validationDefault01").value;
		   var validade = document.getElementById("validationDefault03").value;
		   var cvv = document.getElementById("validationDefault04").value;
		   var nome = document.getElementById("validationDefault05").value;
		   
		   var padrao = /[^a-zà-ú ]/igm;
		   var valida_nome = nome.match(padrao);
	
		   if( valida_nome || !nome ){
			   alert("Não foi possível realizar cadastro: Nome incorreto");
			   document.getElementById("form_id").action = "pagamentoIngresso.jsp";
		   }else{
			   if(cvv.toString().length != 3){
				   alert("Não foi possível realizar cadastro: CVV incorreto");
				   document.getElementById("form_id").action = "pagamentoIngresso.jsp";
				   }else{
					   if(validade.toString().length != 5){
						   alert("Não foi possível realizar cadastro: Validade incorreta");
						   document.getElementById("form_id").action = "pagamentoIngresso.jsp";
						   }else{
							   if(numero.toString().length != 19){
								   alert("Não foi possível realizar cadastro: Cartão incorreto");
								   document.getElementById("form_id").action = "pagamentoIngresso.jsp";
								   }
							   }
					   }
		    }
		}

	function formatarCartao(cartao) {
		const textoAtual = cartao.value;
	    let textoAjustado;
	    textoAjustado = textoAtual.replace(/(\d{4})(\d{4})(\d{4})(\d{4})/,
                    function( regex, arg1, arg2, arg3, arg4) {
                    return arg1 + "-"+ arg2 + "-" + arg3 + "-" + arg4;
                    });
	    cartao.value = textoAjustado;
	}

		function formatarValidade(validade) {
			const textoAtual = validade.value;
		    let textoAjustado;
		    textoAjustado = textoAtual.replace(/(\d{2})(\d{2})/,
	                    function( regex, arg1, arg2) {
	                    return arg1 + "/"+ arg2;
	                    });
		    validade.value = textoAjustado;
		}

		function verificarDisponibilidade(){
				var disp = document.getElementById("dispIng").value;
				var qtd = document.getElementById("qtdf1");

				if(disp == 1){
					document.getElementById("op2").hidden = true;
					document.getElementById("op3").hidden = true;
					document.getElementById("op4").hidden = true;
					document.getElementById("op5").hidden = true;
					qtd.enabled;
				}else{
					if(disp == 2){
						document.getElementById("op3").hidden = true;
						document.getElementById("op4").hidden = true;
						document.getElementById("op5").hidden = true;
						qtd.enabled;
					}else{
						if(disp == 3){
							document.getElementById("op4").hidden = true;
							document.getElementById("op5").hidden = true;
							qtd.enabled;
						}else{
							if(disp == 4){
								document.getElementById("op5").hidden = true;
								qtd.enabled;
							}else{
								qtd.enabled;
								}
						}
					}
				}
			}

</script>
</head>
<body style="background-color: black;" onload="verificarDisponibilidade()">
<%
	Usuario u = new Usuario();
	Ingresso i = new Ingresso();

	String nome = request.getParameter("nome");
	String categoria = request.getParameter("categoria");
	String dia = request.getParameter("dia");
	String meiaEntrada = request.getParameter("meiaEntrada");
	String valor = request.getParameter("valor");
	
	u = u.pegarPorNome(nome);
	
	ArrayList<Double> lista = i.localizarIngresso(categoria, meiaEntrada, dia);
%>
<input type="text" value="<%=lista.size() %>" id="dispIng" style="display: none;">
<div align="center">
<div class="w-50 p-3">
<div class="shadow-sm p-2 mb-2 bg-white rounded" style="margin-top: 50px;">
	<form id="form_id" action="SvCompraIngresso" method="post">
  <div class="form-row">
    <div class="col-md-12 mb-3">
      <label for="validationDefault01">Número do cartão</label>
      <input type="text" class="form-control" id="validationDefault01" name="numeroCartao" onblur="formatarCartao(this)" required>
    </div>
  </div>
  <div class="form-row">
  	<div class="col-md-12 mb-3">
      <label for="validationDefault05">Nome Impresso</label>
      <input type="text" class="form-control" id="validationDefault05" name="nomeImpresso" onblur="verficarDisponibilidade()" required>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-3 mb-3">
      <label for="validationDefault03">Validade</label>
      <input type="text" class="form-control" id="validationDefault03" name="validade" onblur="formatarValidade(this)" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault04">CVV</label>
      <input type="text" class="form-control" id="validationDefault04" name="cvv" required>
    </div>
  </div>
  <div class="form-row">
  	<div class="col-md-3 mb-3">
			<label for="parcela1d">Parcelamento</label>
				<select name="parcela" id="parcela1d" class="form-control">
					<option value="1">1x</option>
					<option value="2">2x</option>
					<option value="3">3x</option>
					<option value="4">4x</option>
					<option value="5">5x</option>
					<option value="6">6x</option>
					<option value="7">7x</option>
					<option value="8">8x</option>
					<option value="9">9x</option>
					<option value="10">10x</option>
					<option value="11">11x</option>
					<option value="12">12x</option>
				</select>
				</div>
				<div class="col-md-3 mb-3">
			<label for="qtdf1">Quantidade</label>
				<select name="qtd" id="qtdf1" class="form-control">
					<option value="1" id="op1">1</option>
					<option value="2" id="op2">2</option>
					<option value="3" id="op3">3</option>
					<option value="4" id="op4">4</option>
					<option value="5" id="op5">5</option>
				</select>
				</div>
		</div>
		<input type="text" name="categoria" value="<%=categoria %>" hidden="true">
		<input type="text" name="dia" value="<%=dia %>" hidden="true">
		<input type="text" name="meiaEntrada" value="<%=meiaEntrada %>" hidden="true">
		<input type="text" name="valor" value="<%=valor%>" hidden="true">
		<input type="text" value="<%=nome%>" name="nome" id="nome" hidden="true">		
  <button class="btn btn-primary" type="submit" onclick="validar()">Enviar</button>
</form>
</div>
<div class="shadow-sm p-3 mb-5 bg-white rounded" style="margin-top: 50px;">
  <div class="form-row">
    <div class="col-md-12 mb-3">
      <label for="validationDefault01">Endereço</label>
      <input type="text" class="form-control" id="validationDefault01" value="<%=u.getEndereco() %>" required>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault03">Cidade</label>
      <input type="text" class="form-control" id="validationDefault03" value="<%=u.getCidade() %>" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault04">Estado</label>
      <input type="text" class="form-control" id="validationDefault04" value="<%=u.getEstado() %>" required>
    </div>
  </div>
  <div class="form-row">
  	<div class="col-md-5 mb-3">
      <label for="validationDefault05">CEP</label>
      <input type="text" class="form-control" id="validationDefault05" value="<%=u.getCep() %>" required>
    </div>
  </div>
</div>
</div>
</div>
</body>
<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
<script src="js/bootstrap.bundle.js"></script>
</html>