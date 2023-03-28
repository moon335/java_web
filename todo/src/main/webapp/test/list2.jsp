<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>list 출력해보기</h2>
	<strong>id </strong>
	<strong>name</strong>
	<br>
	<c:forEach var="category" items="${list}">
		<c:out value="${category.id}">&nbsp;</c:out>
		<c:out value="${category.name}"></c:out><br>
	</c:forEach>
</body>
</html>
