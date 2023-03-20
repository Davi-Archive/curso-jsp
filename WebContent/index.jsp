<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Index</h1>
	<jsp:forward page="receber-nome.jsp">
		<jsp:param name="paramforward" value="curso de jsp site java" />
	</jsp:forward>
</body>
</html>