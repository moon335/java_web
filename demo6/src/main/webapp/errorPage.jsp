<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	여기 jsp 파일을 error 전용 페이지로 사용하려면 
	반드시 isErrorPage = true를 선언 해주어야 한다.
-->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>잘못된 요청입니다.</h2>
	<h3>error message : <%= exception.getMessage() %></h3>
</body>
</html>