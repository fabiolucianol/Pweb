<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mensageria</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f5f5f5;
}

.header {
	text-align: center;
	padding: 5px;
	background-color: #f2f2f2;
	color: #000;
	border-bottom: 1px solid #000;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
}

.container {
	max-width: 500px;
	margin: 50px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="text"], input[type="email"], textarea, select {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
	font-size: 16px;
}

button {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 12px 20px;
	border-radius: 3px;
	cursor: pointer;
	font-size: 16px;
	margin-right: 10px;
}

button:hover {
	background-color: #0056b3;
}

.checkbox-group {
	display: flex;
	align-items: center;
}

.checkbox-group label {
	margin-right: 20px;
}

.checkbox-group input[type="checkbox"] {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	width: 20px;
	height: 20px;
	border: 2px solid #007bff;
	border-radius: 50%;
	margin-right: 5px;
	cursor: pointer;
}

.checkbox-group input[type="checkbox"]:checked::before {
	content: '\2713';
	display: block;
	width: 100%;
	height: 100%;
	text-align: center;
	line-height: 18px;
	color: #007bff;
}
</style>
</head>
<body>
	<div class="header">
		<h1>Serviço de Mensageria</h1>
	</div>

	<div class="container">

		<p>Formulário Para Envio de E-mails</p>

		<form action="enviarEmailServlet" method="post">
			<label for="email">Selecione o destinatário:</label> <select
				name="email" id="email">
				<option value="fabio@gmail.com">Usuário 1</option>
				<option value="fabio@gmail.com">Usuário 2</option>
			</select> <br>

			<div class="checkbox-group">
				<input type="checkbox" id="cumprimentoFormal" name="opcoes"
					value="cumprimentoFormal"> <label for="cumprimentoFormal">Cumprimento
					Formal</label> <input type="checkbox" id="cumprimentoFormalHorario"
					name="opcoes" value="cumprimentoFormalHorario"> <label
					for="cumprimentoFormalHorario">Cumprimento Formal Conforme
					Horário</label>
			</div>
			<br> <label for="avisoAutomatico">Incluir aviso de
				"e-mail automático:"</label> <input type="checkbox" id="avisoAutomatico"
				name="avisoAutomatico"> <br> <label for="titulo">Título:</label>
			<input type="text" name="titulo" id="titulo" required> <br>
			<label for="texto">Texto:</label>
			<textarea name="texto" id="texto" rows="4" required></textarea>
			<br>
			<button type="submit">Enviar</button>
			<button type="button" onclick="history.back()">Voltar</button>
		</form>
	</div>
</body>
</html>
