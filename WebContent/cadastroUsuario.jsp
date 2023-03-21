<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de usuário</title>
<link rel="stylesheet" href="resources/css/cadastro.css">
<link rel="icon" type="image/x-icon" href="resources/image/java.png">
</head>
<body>
	<section class="login-page">
		<h3 style="color: red">${msg}</h3>
		<form action="salvarUsuario" method="post" id="formUserCadastro">
			<table style="border: 3px solid gray; background-color: white">
				<tr>
					<td colspan="2">
						<h1>Cadastro de usuário</h1>
					</td>
				</tr>
				<tr>
					<td class="fields-data">Código:</td>
					<td><input type="text" id="id" name="id" value="${user.id }"
						readonly /></td>
				</tr>
				<tr>
					<td class="fields-data">Login:</td>
					<td><input type="text" id="login" name="login"
						value="${user.login }" /></td>
				</tr>
				<tr>
					<td class="fields-data">Senha:</td>
					<td><input type="text" id="senha" name="senha"
						value="${user.senha }" /></td>
				</tr>
				<tr>
					<td class="fields-data">Nome:</td>
					<td><input type="text" id="nome" name="nome"
						value="${user.nome }" /></td>
				</tr>
				<tr>
					<td class="fields-data">Telefone:</td>
					<td><input type="text" id="telefone" name="telefone"
						value="${user.telefone }" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="button-3" type="submit">Salva Usuário</button>
						<button class="button-3" onclick="document.getElementById('formUserCadastro').action = 'salvarUsuario?acao=reset'">Cancelar</button>
					</td>
				</tr>
			</table>

		</form>
		<br />

		<table style="border: 3px solid gray; background-color: white">
			<tr>
				<th>ID</th>
				<th>Login</th>
				<th>Senha</th>
				<th>Nome</th>
				<th>Telefone</th>
				<th>Editar</th>
				<th>Excluir</th>
			</tr>
			<c:forEach items="${usuarios }" var="user">
				<tr>
					<td style="width: 150px;"><c:out value="${user.id}"></c:out></td>
					<td style="width: 150px;"><c:out value="${user.login}"></c:out></td>
					<td style="width: 150px;"><c:out value="${user.senha}"></c:out></td>
					<td style="width: 150px;"><c:out value="${user.nome}"></c:out></td>
					<td style="width: 150px;"><c:out value="${user.telefone}"></c:out></td>
					<td><a href="salvarUsuario?acao=editar&user=${user.id}"> <img
							src="resources/image/editar.png" alt="Editar" width="45px" />
					</a></td>
					<td><a href="salvarUsuario?acao=delete&user=${user.id}"> <img
							src="resources/image/excluir.png" alt="Excluir" width="45px" />
					</a></td>
				</tr>
			</c:forEach>
		</table>
	</section>
</body>
</html>