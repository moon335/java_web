<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loop Example</title>
</head>
<body>

	변수 선언 1 2 3 4 5 6 7 8
	<c:set var="id" value="0"/>
	반복문 사용해서
	<c:forEach var="count" begin="${count + 1}" end="7" step="1">
		<p>Number ${count}</p>
	</c:forEach>
	
	<c:set var="count1" value="0"></c:set>
	<c:forEach var="category" items="${list}">
		<c:set var="count" value="${count + 1}"></c:set>
		<c:out value="${count}"></c:out>
	</c:forEach>
	
</body>
</html>