package com.cgv.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cgv.dto.UserDTO;
import com.cgv.service.UserService;

@WebServlet("/userController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		System.out.println(action);
		if("logout".equals(action)) {
			response.sendRedirect("logout.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		UserService service = new UserService();
		String action = request.getParameter("action");
		
		if("login".equals(action)) {
			String userId = request.getParameter("username");
			UserDTO dto = service.selectByUserId(userId);
			System.out.println(dto.getUserId());
			System.out.println(dto.getPassword());
			request.setAttribute("userDto", dto);
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		} else if("signUp".equals(action)) {
			String username = request.getParameter("username");
			String userId = request.getParameter("userId");
			String password = request.getParameter("password");
			String birthDate = request.getParameter("birthDate");
			String tel = request.getParameter("tel");
			String email = request.getParameter("email");
			
			int result = service.signUp(username, userId, password, birthDate, tel, email);
			if(result == 1) {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('회원가입에 성공했습니다.'); location.href='login.jsp' </script>");
				out.flush();
				response.flushBuffer();
				response.sendRedirect("login.jsp");
			} else {
				UserDTO dto = service.selectByUserId(userId);
				if(dto.getUsername() == null) {
					response.setContentType("text/html");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('중복된 아이디가 존재합니다.'); location.href='login.jsp' </script>");
					out.flush();
					response.flushBuffer();
					response.sendRedirect("signUp.jsp");
				} else {
					response.setContentType("text/html");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('회원가입에 실패했습니다.'); location.href='login.jsp' </script>");
					out.flush();
					response.flushBuffer();
					response.sendRedirect("signUp.jsp");
				}
			}
		}
		
	} // end of post

}
