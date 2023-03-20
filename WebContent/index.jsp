<jsp:useBean id="calcula" class="beans.BeanCurso" type="beans.BeanCurso"
	scope="page" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="calculaBean" class="beans.BeanCurso"
		type="beans.BeanCurso" scope="page" />

	<h1>Index</h1>
	<br />

	<form action="cabecalho.jsp" method="post">
		<input type="text" id="nome" name="nome" />
		<br />
		<input type="text" id="ano" name="ano" />
		<br />
		<input type="submit" value="testar" />
	</form>

</body>
</html>