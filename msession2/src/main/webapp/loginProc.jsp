<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	// 넘겨받은 값 username과 password를 확인해서
	// admin1 과 1234 값이 같다면 로그인 처리하는 코드를 작성하시오.
	// 아이디와 비번이 틀리다면 login.jsp 페이지로 이동하는 코드도 작성 하시오.
	String inputName = request.getParameter("username");
	String inputPwd = request.getParameter("password");
	
	if(inputName.equals("admin1") && inputPwd.equals("1234")) {
		session.setAttribute("username", inputName);
		response.sendRedirect("index.jsp");
	} else {
		out.println("<script>alert('아이디까먹었니?'); location.href='login.jsp'</script>");
	}

%>