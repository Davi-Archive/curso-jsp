<jsp:useBean id="calcula" class="beans.BeanCurso" type="beans.BeanCurso"
	scope="page" />

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acesso Permitido</title>
<link rel="stylesheet" href="resources/css/index.css">
</head>
<body>
	<section class="login-page">
	<jsp:setProperty property="*" name="calcula" />
	<h3>Seja bem vindo ao sistema em jsp</h3>
	
	</section>
	
	<a href="cadastroUsuario.jsp">Cadastro de usuários</a>
</body>
</html>