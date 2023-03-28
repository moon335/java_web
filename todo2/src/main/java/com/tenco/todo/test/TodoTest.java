package com.tenco.todo.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tenco.todo.dto.TodoListDTO;
import com.tenco.todo.repository.TodoDAO;

@WebServlet("/todoTest")
public class TodoTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TodoTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TodoDAO dao = new TodoDAO();
		String action = request.getParameter("action");
		if("delete".equals(action)) {
			String cId = request.getParameter("cId");
			dao.delete(Integer.parseInt(cId));
			response.sendRedirect("/todo2/todoTest");
		} else {
			ArrayList<TodoListDTO> list = dao.select();
			request.setAttribute("list", list);
			RequestDispatcher dispatcher = request.getRequestDispatcher("test/todoList.jsp");
			
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		TodoDAO dao = new TodoDAO();
		String action = request.getParameter("action");
		int responseResult = 0;
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String priority = request.getParameter("priority");
		String completed = request.getParameter("completed");
		String categoryId = request.getParameter("categoryId");
		
		if(action.equals("insert")) {
			responseResult = dao.insert(title, description, Integer.parseInt(priority), Integer.parseInt(completed), Integer.parseInt(categoryId));
		} else {
			String id = request.getParameter("id");
			responseResult = dao.update(Integer.parseInt(id), title, description, Integer.parseInt(priority), Integer.parseInt(completed), Integer.parseInt(categoryId));
		}
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		PrintWriter writer = response.getWriter();
		writer.print("성공한 row 개수는" + responseResult);
	}

}
