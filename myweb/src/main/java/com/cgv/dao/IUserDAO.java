package com.cgv.dao;

import com.cgv.dto.UserDTO;

public interface IUserDAO {
	
	UserDTO selectByUserId(String userId);
	
	int insert(String username, String userId, String password, String birthDate, String tel, String email);
	
}
