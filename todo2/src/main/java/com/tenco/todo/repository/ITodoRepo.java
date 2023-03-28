package com.tenco.todo.repository;

import java.util.ArrayList;

import com.tenco.todo.dto.TodoListDTO;

public interface ITodoRepo {
	
	ArrayList<TodoListDTO> select();
	int insert(String title, String description, int priority, int completed, int categoryId);
	int update(int id, String title, String description, int priority, int completed, int categoryId);
	int delete(int id);
}
