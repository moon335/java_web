<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션을 꺼내는 방법 확인
	String username = (String)session.getAttribute("username");
	if(username == null) {
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	body {
		display: flex;
		align-items: center;
		flex-direction: column;
	}
	
	h1 {
		text-shadow: 2px 2px;
	}
	
	input[type="submit"] {
		padding: 15px;
		background-color: #ADC8FF;
		color: #fff;
		border: none;
		border-radius: 5px;
		cursor: pointer;
	}
	
	input[type="submit"]:hover {
		background-color: #68E06B;
		color: #000;
	}
</style>

</head>
<body>
	<h1>Welcome, <%=username %></h1>
	<form action="logout.jsp">
		<input type="submit" value="logout">
	</form>
</body>
</html>