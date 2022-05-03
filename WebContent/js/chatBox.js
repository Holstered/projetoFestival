$(document).ready(function() {
			$("#botao").click(function() {
												$.ajax({
															url : 'SvEscreverMensagem',
															type : 'GET',
															data : {mensagem : document.getElementById('i1').value, cpf : document.getElementById('cpfPessoa').value},
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
			
		});/**
 * 
 */