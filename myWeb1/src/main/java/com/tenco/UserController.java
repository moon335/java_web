package com.tenco;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/uc")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();
        System.out.println("UserController 생성자 호출");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("UserController doGet 메서드 호출");
		// HTTP 메세지 - http 메세지 헤더에 정의가 된다.
		// ContextType -> text/html, application/json
		// ContextType -> 응답 보낼 데이터 타입의 형식이다.
		// 웹 표준 기술인 MIME TYPE 이라는 것이 정해져 있다.
		PrintWriter out = response.getWriter();
		response.setContentType("text/html; charset=utf-8;");
	}

	// 주소 경로는 똑같지만 METHOD 선정에 따라 구분할 수 있다.--> 서버는
	// http://localhost:8080/myWeb1/uc
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("METHOD 방식 중 POST 요청 방식을 확인하고 응답 처리해보자.");
		request.setCharacterEncoding("UTF-8");
		// doPost 동작 시키기 위해서는 Method: post 방식을 이해해야 한다.
		// MIME TYPE : text/plain
		// Mike 라는 문자열을 응답처리 해주세요 !!
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("홍길동");
	}

}
