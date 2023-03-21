<jsp:useBean id="calcula" class="beans.BeanCurso" type="beans.BeanCurso"
	scope="page" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bem Vindo!</title>
<link rel="stylesheet" href="resources/css/index.css">
<link rel="icon" type="image/x-icon" href="resources/image/java.png">
</head>
<body>

	<div class="login-page">
		<div class="form">
			<form class="login-form" action="LoginServlet" method="post">
				<input type="text" id="login" name="login" placeholder="Login" /> <input
					type="text" id="senha" name="senha" placeholder="Senha" />
					 <button type="submit" >Logar</button>
			</form>
		</div>
	</div>



</body>
</html>