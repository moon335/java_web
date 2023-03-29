package com.cgv.service;

import com.cgv.dao.UserDAO;
import com.cgv.dto.UserDTO;

public class UserService {
	
	private UserDAO dao;
	
	public UserService() {
		dao = new UserDAO();
	}
	
	public UserDTO selectByUserId(String userId) {
		UserDTO resultDto = dao.selectByUserId(userId);
		return resultDto;
	}
	
	public int signUp(String username, String userId, String password, String birthDate, String tel, String email) {
		int resultRow = 0;
		resultRow = dao.insert(username, userId, password, birthDate, tel, email);
		return resultRow;
	}
	
}
