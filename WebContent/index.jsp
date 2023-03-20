<jsp:useBean id="calcula" class="beans.BeanCurso" type="beans.BeanCurso"
	scope="page" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="numero" value="${120/2 }" />

	<c:choose>
		<c:when test="${numero>50 }">
			<c:out value="${'Maior que 50'} "></c:out>
		</c:when>

		<c:when test="${numero<50 }">
			<c:out value="${'Menor que 50'} "></c:out>
		</c:when>

		<c:otherwise>
			<c:out value="${'Não encontrou valor correto' }" />
		</c:otherwise>
	</c:choose>

	<c:forEach var="n" begin="1" end="20">
		Item : ${n }
		<br />
	</c:forEach>

	<c:forTokens items="Davi-Alex-Jhow" delims="-" var="nome">
		Nome: <c:out value="${nome }"></c:out>
		<br />
	</c:forTokens>


	<c:url value="/acessoliberado.jsp" var="acesso">
		<c:param name="para1" value="111"></c:param>
		<c:param name="para2" value="222"></c:param>
	</c:url>
	
	${acesso }

	<c:if test="${numero >50 }">
		<c:redirect url="http://www.google.com.br"></c:redirect>
	</c:if>
	<c:if test="${numero <50 }">
		<c:redirect url="acessoliberado.jsp"></c:redirect>
	</c:if>


	<form action="LoginServlet" method="post">
		<input type="text" id="login" name="login" /> <br /> <input
			type="text" id="senha" name="senha" /> <br /> <input type="submit"
			value="Logar" />
	</form>

</body>
</html>