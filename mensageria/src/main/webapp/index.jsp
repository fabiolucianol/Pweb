<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Enviar E-mail</title>
</head>
<body>
    <h1>Enviar E-mail</h1>

    <form action="enviarEmailServlet" method="post">
        <label for="email">Selecione o destinatário:</label>
        <select name="email" id="email">
            <option value="fabio@gmail.com">Usuário 1</option>
            <option value="fabio@gmail.com">Usuário 2</option>
        </select>
        <br>
        <label for="titulo">Título do e-mail:</label>
        <input type="text" name="titulo" id="titulo" required>
        <br>
        <label for="texto">Texto do e-mail:</label>
        <textarea name="texto" id="texto" rows="4" required></textarea>
        <br>
        <label for="tipoEnvio">Tipo de envio:</label>
        <select name="tipoEnvio" id="tipoEnvio">
            <option value="padrao">Padrão</option>
            <option value="cumprimentoHorario">Cumprimento conforme horário</option>
            <option value="automatico">E-mail automático</option>
        </select>
        <br>
        <button type="submit">Enviar</button>
    </form>
</body>
</html>
