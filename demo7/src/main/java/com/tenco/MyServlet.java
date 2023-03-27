package com.tenco;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 데이터 설정
		String message = "안녕 JSP !";
		
		request.setAttribute("msg", message);
		RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
		
		// request 객체와 response 객체를 그대로 던져버리기
		dispatcher.forward(request, response);
		
		PrintWriter writer = response.getWriter();
		writer.write("forward 이후");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
