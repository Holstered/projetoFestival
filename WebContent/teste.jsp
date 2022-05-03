<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="controle.Mensagem"%>
<!DOCTYPE html>
<html lang=”pt-br”>
<head>
<meta charset=utf-8″>
<title>Cadastro</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="css/estilo.css"
	media="screen" />
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
<script src="Jquery/jquery-3.6.0.min.js"></script>
<style>

.chat-btn {
	position: absolute;
	right: 14px;
	bottom: 30px;
	cursor: pointer
}

.chat-btn .close {
	display: none
}

.chat-btn i {
	transition: all 0.9s ease
}

#check:checked ~.chat-btn i {
	display: block;
	pointer-events: auto;
	transform: rotate(180deg)
}

#check:checked ~.chat-btn .comment {
	display: none
}

.chat-btn i {
	font-size: 22px;
	color: #fff !important
}

.chat-btn {
	width: 50px;
	height: 50px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50px;
	background-color: blue;
	color: #fff;
	font-size: 22px;
	border: none
}

.wrapper {
	margin-top: 45%;
	margin-left: 45%;
	right: 20px;
	bottom: 100px;
	width: 300px;
	background-color: #fff;
	border-radius: 5px;
}

#check:checked ~.wrapper {
	opacity: 1
}

.header {
	padding: 13px;
	background-color: blue;
	border-radius: 5px 5px 0px 0px;
	margin-bottom: 10px;
	color: #fff
}

.chat-form {
	padding: 15px
}

.chat-form input, textarea, button {
	margin-bottom: 10px
}

.chat-form textarea {
	resize: none
}

.form-control:focus, .btn:focus {
	box-shadow: none
}

.btn, .btn:focus, .btn:hover {
	background-color: blue;
	border: blue
}

#check {
	display: none !important
}

</style>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	media="screen" />
</head>
<body style="background-color: black;">
	<main>

		<div class="wrapper" width="10px">
			<div class="header">
				<h6>Chat</h6>
			</div>
			<div id="divCorpo" class="Linha" style="height: 300px; overflow-y: scroll;">
				<div id="mensagens">
			    <%
					Mensagem m = new Mensagem();
				ArrayList<String> chat = new ArrayList<String>();

				chat = m.lerMsg("E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\ArquivoTeste.txt");

				if (chat == null) {
				
					} else {
				for (int i = 0; i < chat.size(); i++) {
					out.println("<p style='background-color: #DCDCDC; direction: rtl;'>" + chat.get(i)+ "</p>");
					}
				}
				%>
				</div>
			</div>
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="digite" id="i1" onfocus="this.value='';">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button" id="botao">></button>
				</div>
			</div>
		</div>
	</main>
	<script>
		$(document).ready(function() {
			$("#botao").click(function() {
												$.ajax({
															url : 'SvEscreverMensagem',
															type : 'GET',
															data : {mensagem : document.getElementById('i1').value},
															success : function(x) {
																var count = 0;
																var objDiv = document.getElementById("divCorpo");
																objDiv.scrollTop = objDiv.scrollHeight;
																var divPai = $('#mensagens');
																divPai.append("<p style='background-color: #DCDCDC; direction: rtl;'>"+x+ "</p>");
																var objDiv = document.getElementById("divCorpo");
																objDiv.scrollTop = objDiv.scrollHeight;
																count++;
																document.getElementById("i1").value = "";
															},
															error : function() {
																$(".Linha").text(divPai.append("<div class='textoBox' style='display:table-cell;background-color: grey; margin-bottom: auto;'>erro</div><br>"));
															},

														});
											});

			$('#i1').keypress(function(e) {
				if (e.keyCode == 13)
					$('#botao').click();
			});
			
		});

	</script>
</body>
</html>