
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="calculaBean" class="beans.BeanCurso" type="beans.BeanCurso" scope="page" />
	
	<%= calculaBean.calcula(50) + " Olá" %>
	
	<jsp:include page="cabecalho.jsp" />
	<h1>Index</h1>
	<jsp:include page="rodape.jsp" />
</body>
</html>