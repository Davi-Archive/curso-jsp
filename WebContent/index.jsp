<jsp:useBean id="calcula" class="beans.BeanCurso" type="beans.BeanCurso"
	scope="page" />
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:out value="${'bem vindo ao JSTL' }"></c:out>

	<form action="LoginServlet" method="post" >
		<input type="text" id="login" name="login" /> 
		<br /> 
		<input
			type="text" id="senha" name="senha" /> <br /> 
		<input type="submit" value="Logar" />
	</form>

</body>
</html>