<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de usuário</title>
</head>
<body>
	<h1>Cadastro de usuário</h1>

	<form action="salvarUsuario" method="post">
		<table>
			<tr>
				<td>Login:</td>
				<td><input type="text" id="login" name="login" /></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="text" id="senha" name="senha" /></td>
			</tr>
		</table>
		<input type="submit" value="salvar" />
	</form>

	<table>
		<c:forEach items="${usuarios }" var="user">
			<tr>
				<td style="width: 150px;"><c:out value="${user.login}"></c:out></td>
				<td><c:out value="${user.senha}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>