<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    	String email = request.getParameter("email");
    	String password = request.getParameter("password"); 
    
    	if(email != null && password != null) {
    		if(email.equals("a@naver.com") && password.equals("1234")) {
    			session.setAttribute("email", email);
    			response.sendRedirect("test.jsp");
    		} else {
    			out.print("<p>이메일과 비밀번호를 확인해주세요.</p>");
    		}
    	}
    %>
    