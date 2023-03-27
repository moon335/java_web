package com.tenco;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet2")
public class MyServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String message = "안녕 include() 방식 !";
		
		request.setAttribute("msg2", message);
		
		// RequestDispatcher를 이용하여 JSP를 포함시킴
		RequestDispatcher dispatcher = request.getRequestDispatcher("result2.jsp");
		
		dispatcher.include(request, response);
		
		PrintWriter writer = response.getWriter();
		writer.write("include 이후");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
