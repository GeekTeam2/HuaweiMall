package com.fss.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.fss.bean.Category;
import com.fss.utils.C3P0Utils;

public class CategoryDao {

	public List<Category> findAll() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());

		String sql = "select * from product";

		return runner.query(sql, new BeanListHandler<Category>(Category.class));

	}

}
