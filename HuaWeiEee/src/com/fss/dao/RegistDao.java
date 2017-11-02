package com.fss.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.fss.bean.User;
import com.fss.utils.C3P0Utils;

public class RegistDao {

	public String regist(User user) throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());

		
		String sql = "insert into user (uid,username,email,password) values(?,?,?,?);";

		System.out.println(sql);

		System.out.println("_____________dao");

		 runner.update(sql, user.getUid(),user.getUsername(),user.getName(),user.getPassword());
		
		return "------------";
		
	}


}
