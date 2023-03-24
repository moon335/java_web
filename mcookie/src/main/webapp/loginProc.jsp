<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// form 태그로 넘어오는 값을 파싱하는 기술
	// form 태그의 MIME TYPE -> application/x-www-urlencoded...
	// name = "" 키 값을 찾아서 값을 긁어낼 수 있다.
	String inputId = request.getParameter("userId");
	String inputPwd = request.getParameter("password");
	String remember = request.getParameter("remember");
	
	// 여기 파일의 목적은 remember 값 유무에 따라 로직을 작성해서 쿠키 사용
	if(remember != null) {
		// 쿠키 생성 - 생성자에는 키와 값을 넣음
		Cookie cookie = new Cookie("userId", inputId); // 쿠키 생성
		cookie.setMaxAge(60 * 60 * 24 * 30); // 30일간 유지
		response.addCookie(cookie);
	} else {
		// 쿠키 삭제 - remember의 사용자가 체크를 하지 않은 상태라면 쿠키를 삭제
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c : cookies) {
				if(c.getName().equals("userId")) {
					c.setMaxAge(0);
					response.addCookie(c);
					break;
				}
			}
		}
	}
	response.sendRedirect("login.jsp");
%>
    