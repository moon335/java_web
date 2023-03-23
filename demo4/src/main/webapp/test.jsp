<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login2.jsp" method="post">
		<label>email : </label>
		<input type="email" id="email" name="email">
		<label>password : </label>
		<input type="password" id="password" name="password">
		<button type="submit">로그인</button>
	</form>
	
	<% if(session.getAttribute("email") != null) { %> 
		<p><%=session.getAttribute("email") %>님 환영합니다.</p>	
	<% } %>
</body>
</html>