<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de usuário</title>
<link rel="stylesheet" href="resources/css/index.css">
</head>
<body>
	<section class="login-page">
		<h1>Cadastro de usuário</h1>
		<h3 style="color: red">${msg}</h3>
		<form action="salvarUsuario" method="post">
			<table style="border: 3px solid gray; background-color: white">
				<tr>
					<td>Código:</td>
					<td><input type="text" id="id" name="id" value="${user.id }"
						readonly /></td>
				</tr>
				<tr>
					<td>Login:</td>
					<td><input type="text" id="login" name="login"
						value="${user.login }" /></td>
				</tr>
				<tr>
					<td>Senha:</td>
					<td><input type="text" id="senha" name="senha"
						value="${user.senha }" /></td>
				</tr>
				<tr>
					<td>Nome:</td>
					<td><input type="text" id="nome" name="nome"
						value="${user.nome }" /></td>
				</tr>
				<tr>
					<td>Telefone:</td>
					<td><input type="text" id="telefone" name="telefone"
						value="${user.telefone }" /></td>
				</tr>
			</table>
			<input type="submit" value="salvar" />
		</form>

		<table style="border: 3px solid gray; background-color: white">
			<tr>
				<th>ID</th>
				<th>Login</th>
				<th>Senha</th>
				<th>Nome</th>
				<th>Telefone</th>
			</tr>
			<c:forEach items="${usuarios }" var="user">
				<tr>
					<td style="width: 150px;"><c:out value="${user.id}"></c:out></td>
					<td style="width: 150px;"><c:out value="${user.login}"></c:out></td>
					<td style="width: 150px;"><c:out value="${user.senha}"></c:out></td>
					<td style="width: 150px;"><c:out value="${user.nome}"></c:out></td>
					<td style="width: 150px;"><c:out value="${user.telefone}"></c:out></td>
					<td><a href="salvarUsuario?acao=delete&user=${user.login}">Excluir</a></td>
					<td><a href="salvarUsuario?acao=editar&user=${user.login}">Editar</a></td>
				</tr>
			</c:forEach>
		</table>
	</section>
</body>
</html>