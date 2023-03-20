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
	<jsp:setProperty property="*" name="calcula" />
	<h3>Cabecalho</h3>
	
	<jsp:getProperty property="nome" name="calcula" />
	<br />
	<jsp:getProperty property="ano" name="calcula" />
	<br />
	<jsp:getProperty property="sexo" name="calcula" />
	<br />
</body>
</html>