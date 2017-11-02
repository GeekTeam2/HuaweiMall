package com.fss.service;

import java.sql.SQLException;

import com.fss.bean.User;
import com.fss.dao.UserDao;





public class UserService {
	public User find(String email,String password) throws SQLException {
		// TODO Auto-generated method stub
		return new UserDao().Login(email,password);
	}

}
