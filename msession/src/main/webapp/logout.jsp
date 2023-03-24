<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate(); // 로그 아웃 -> 세션 메모리에서 해제
	response.sendRedirect("login.jsp"); // 로그아웃 이후 로그인 페이지로 이동
%>
