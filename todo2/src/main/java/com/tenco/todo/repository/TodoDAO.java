package com.tenco.todo.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.tenco.todo.dto.TodoListDTO;
import com.tenco.todo.utils.DBHelper;

public class TodoDAO implements ITodoRepo{
	
	DBHelper dbHelper;
	Connection conn;

	public TodoDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}
	
	@Override
	public ArrayList<TodoListDTO> select() {
		ArrayList<TodoListDTO> list = new ArrayList<>();
		String queryStr = " SELECT * FROM todolist ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String description = rs.getString("description");
				int priority = rs.getInt("priority");
				int completed = rs.getInt("completed");
				String createdAt = rs.getString("createdAt");
				int categoryId = rs.getInt("category_id");
				
				TodoListDTO dto = new TodoListDTO(id, title, description, priority, completed, createdAt, categoryId);
				
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public int insert(String title, String description, int priority, int completed, int categoryId) {
		int resultRow = 0;
		String queryStr = " INSERT INTO todolist(title, description, priority, completed, category_id) "
				+ " VALUES "
				+ "	(?, ?, ?, ?, ?) ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setString(1, title);
			pstmt.setString(2, description);
			pstmt.setInt(3, priority);
			pstmt.setInt(4, completed);
			pstmt.setInt(5, categoryId);
			resultRow = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return resultRow;
	}

	@Override
	public int update(int id, String title, String description, int priority, int completed, int categoryId) {
		int resultRow = 0;
		String queryStr = " UPDATE todolist "
				+ " SET title = ?, description = ?, priority = ?, completed = ?, category_id = ? "
				+ "WHERE id = ? ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setString(1, title);
			pstmt.setString(2, description);
			pstmt.setInt(3, priority);
			pstmt.setInt(4, completed);
			pstmt.setInt(5, categoryId);
			pstmt.setInt(6, id);
			resultRow = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return resultRow;
	}

	@Override
	public int delete(int id) {
		int resultRow = 0;
		String queryStr = " DELETE FROM todolist WHERE id = ? ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(queryStr);
			pstmt.setInt(1, id);
			resultRow = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultRow;
	}
	
} // end of class
