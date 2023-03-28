<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.tenco.todo.dto.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Category List</h2>
	<table>
		<tr>
			<th>ID</th>
			<th>name</th>
		</tr>
		<c:forEach var="category" items="${list}">
			<tr>
				<td>${category.id}</td>
				<td>${category.name}</td>
				<td><button><a href="/todo/cTest?action=delete&cId=${category.id}">delete</a></button></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>