package com.tenco.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// URL - http://localhost:8080/blog/index.html
// URI - http://localhost:8080/blog/boardcontroller


// web.xml 환경설정 같은 부분인데
// web.xml 파일은 웹 서버가 동작시 한번만 로딩되기 때문에 서버를 재시작 해야한다.
@WebServlet("/boardcontroller") 
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardController() {
        super();
    }
    
    
    // GET
    // http://localhost:8080/blog/boardcontroller?name=Lee
    // ? 다음을 쿼리파라미터라고 한다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("boardController 동작");
		System.out.println("contextPath : " + request.getContextPath());
		System.out.println("cookies : " + request.getCookies());
		System.out.println("session : " + request.getSession());
		System.out.println("p_names : " + request.getParameterNames());
		// JSESSIONID라는 것은 사용자가 웹 서버에 최초로 요청하고 응답시에
		// 값을 담아서 보낸다.
		System.out.println("test: " + request.getParameter("name"));
		
		response.addCookie(new Cookie("mycookie", "asd123"));
		response.getStatus(); // 통신 성공, 실패 여부 int값 반환(200, 404)
		response.sendRedirect("/usercontroller"); // 다른 곳으로 한번 더 돌림, request 객체와 response 객체 다시 생성
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
