<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sessionUserName = (String)session.getAttribute("username");
	// 문제 로그인이 안되어 있으면 login.jsp 페이지로 이동 시키시오.
	String buttonValue = request.getParameter("logout");
	if(sessionUserName == null) {
		response.sendRedirect("login.jsp");
	} else {
		if(buttonValue != null) {
			if(buttonValue.equals("logout")){
				session.invalidate();
				response.sendRedirect("login.jsp");
			}
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=sessionUserName %>님! 환영합니다.</h1>
	
	<form action="index.jsp" method="post">
		<input type="submit" value="logout" name="logout">
	</form>
	
</body>
</html>