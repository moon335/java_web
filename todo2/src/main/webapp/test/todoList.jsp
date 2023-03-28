<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>todoList</title>
<style type="text/css">
	table {
		text-align: center;
	}
</style>
</head>
<body>
	<h1>여기는 todoList입니다.</h1>
	<table>
		<tr>
			<th>id</th>
			<th>title</th>
			<th>description</th>
			<th>priority</th>
			<th>completed</th>
			<th>createdAt</th>
			<th>categoryId</th>
		</tr>
		<c:forEach var="todoList" items="${list}">
			<tr>
				<td>${todoList.id}</td>
				<td>${todoList.title}</td>
				<td>${todoList.description}</td>
				<td>${todoList.priority}</td>
				<td>${todoList.completed}</td>
				<td>${todoList.createdAt}</td>
				<td>${todoList.categoryId}</td>
				<td><button><a href="/todo2/todoTest?action=delete&cId=${todoList.id}">DELETE</a></button></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>