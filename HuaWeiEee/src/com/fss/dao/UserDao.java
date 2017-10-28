package com.fss.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.fss.bean.User;
import com.fss.utils.C3P0Utils;



public class UserDao {
	public User Login(String email,String password) throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from user where email = ? and password = ?;";
		return runner.query(sql, new BeanHandler<User>(User.class), email, password);
	}
}
