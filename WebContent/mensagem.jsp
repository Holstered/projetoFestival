<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="controle.Usuario"%>
<%@ page import="controle.Mensagem"%>
<%@ page import="java.util.ArrayList"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mensagem</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"
	media="screen" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/estilo.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/chatBox.css" media="screen" />
	<script src='http://code.jquery.com/jquery-2.1.3.min.js'></script>
	<script src="js/bootstrap.bundle.js"></script>
	<script>
	$(document).ready(function() {
		$("#botao").click(function() {
											$.ajax({
														url : 'SvResponderMsg',
														type : 'POST',
														data : {mensagem : document.getElementById('i1').value, cpf : document.getElementById('cpfPessoa').value},
														success : function(x) {
															var count = 0;
															var objDiv = document.getElementById("divCorpo");
															objDiv.scrollTop = objDiv.scrollHeight;
															var divPai = $('#mensagens');
															divPai.append("<p class='textoBox' style='background-color: #cce6ff; direction: rtl; text-align: left;'>"+x+ "</p>");
															var objDiv = document.getElementById("divCorpo");
															objDiv.scrollTop = objDiv.scrollHeight;
															count++;
															document.getElementById("i1").value = "";
														},
														error : function() {
															$(".Linha").text(divPai.append("<div class='textoBox' style='display:table-cell; background-color: grey; margin-bottom: auto; text-align: right;'>erro</div><br>"));
														},

													});
										});

		$('#i1').keypress(function(e) {
			if (e.keyCode == 13)
				$('#botao').click();
		});
		
	});
	</script>
</head>
<body style="background-color: black;">
	<%
		String cpf = request.getParameter("cpf");
	%>
	<input type="text" id="cpfPessoa" value="<%=cpf %>" hidden="true">
	<div style="
    width: 1000px;
    margin:auto;">
<div style="
    width: 100%;
    background-image: none;
    background-repeat: repeat;
    background-attachment: scroll;
    background-position: 0% 0%;
    position: fixed;
    bottom: 0pt;
    left: 0pt;">
		<input type="checkbox" id="check"> <label class="chat-btn"
			for="check"> <i class="fa fa-commenting-o comment"></i> <i
			class="fa fa-close close"></i>
		</label>
		<div class="wrapper" width="10px">
			<div class="header">
				<h6>Chat</h6>
			</div>
			<div id="divCorpo" class="Linha" style="height: 300px; overflow-y: scroll;">
				<div id="mensagens">
			    <%
				Mensagem m = new Mensagem();
				ArrayList<String> chat = new ArrayList<String>();				
				
				chat = m.partir("E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\"+cpf+".txt");
				

				if (chat == null) {
				
					} else {
						int numero;
				for (int i = 0; i < chat.size(); i++) {
						numero = m.numero(i, "E:\\Programação\\ProjetoFinalJEE\\ProjetoFinal\\"+cpf+".txt");
						if(numero == 1){
							out.println("<p style='background-color: #DCDCDC; direction: rtl; text-align: right;'>" + chat.get(i)+ "</p>");
						}else{
							if(numero == 2){
							out.println("<p style='background-color: #cce6ff; direction: rtl; text-align: left;'>" + chat.get(i)+ "</p>");
							}
						}
					}
				}
				%>
				</div>
			</div>
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="digite" id="i1" onfocus="this.value='';">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button" id="botao" style="color: white;">>></button>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>