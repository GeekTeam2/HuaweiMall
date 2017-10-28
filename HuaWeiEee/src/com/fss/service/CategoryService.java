package com.fss.service;

import java.sql.SQLException;
import java.util.List;

import com.fss.bean.Category;
import com.fss.dao.CategoryDao;

public class CategoryService {

	/**
	 * 查询全部分类
	 * @return
	 * @throws SQLException 
	 */
	public List<Category> findAll() throws SQLException {
		
		CategoryDao  dao = new CategoryDao();
		
		return dao.findAll();
	}
	
	
}
