<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<h1>로그인 해주세요.</h1>
	<form action="loginProc.jsp" method="post">
		<label for="username">username : </label>
		<input type="text" name="username" id="username" required="required">
		<label for="password">Password : </label>
		<input type="password" name="password" id="password" required="required">
		<input type="submit" value="login">
	</form>
</body>
</html>