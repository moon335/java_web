package com.tenco.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginProc")
public class LoginProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginProc() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	// method : post (form 태그에서)
	// http://localhost:8080/demo2/loginProc
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// form 태그라면 반드시 속성 name = "email"이 있어야함 -> value = "a@naver.com"
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String isRemember = request.getParameter("check");
		String hobby = request.getParameter("hobby");
		String[] likes = request.getParameterValues("like"); // 배열처리(다중선택)
		
		
		System.out.println("email: " + email);
		System.out.println("password: " + password);
		System.out.println("isRemember: " + isRemember);
		System.out.println("hobby: " + hobby);
		if(likes != null) {
			for (String string : likes) {
				System.out.println("like : " + string);
			}
		}
	}

}
