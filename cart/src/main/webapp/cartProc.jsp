<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	// name
	String[] fruits = request.getParameterValues("fruit");
	String[] names = {"사과", "바나나", "복숭아"};
	// 방어적 코드
	if(fruits != null && fruits.length > 0) {
		// 사용자가 하나 이상 선택한 경우
		for(int i = 0; i < fruits.length; i++) {
			Cookie cookie = new Cookie(names[i], "on");
			cookie.setMaxAge(60);
			response.addCookie(cookie);
		}
	}
	
	String isDelete = request.getParameter("delete");
	if(isDelete != null) {
		if(isDelete.equals("delete")) {
			// 삭제처리
			Cookie[] cookies = request.getCookies();
			if(cookies != null) {
				
			}
		}
	}
	
	String apple = request.getParameter("apple");
	String peach = request.getParameter("peach");
	String banana = request.getParameter("banana");
	
	if(apple != null || peach != null || banana != null) {
		if(apple != null) {
			session.setAttribute("apple", apple);
		} else if (peach != null) {
			session.setAttribute("peach", peach);
		} else if (banana != null) {
			session.setAttribute("banana", banana);
		}
	} else {
		
	}
	
	
	
%>