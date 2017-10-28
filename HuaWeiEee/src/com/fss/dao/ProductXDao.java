package com.fss.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.fss.bean.Pictures;
import com.fss.bean.ProductX;
import com.fss.utils.C3P0Utils;

public class ProductXDao {

	public List<ProductX> findProduct(String version ,String colour, String sys) throws SQLException {

		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		// 1.查询order
		String sql = "select * from phone p where p.version=? and p.sys=? and p.colour=? ;";

		return runner.query(sql, new BeanListHandler<ProductX>(ProductX.class),version, sys, colour);
	}

	public List<Pictures> findByImage(String colour, String version) throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		
		String sql = "select image from pictures w  where  w.colour=? and w.version=? ;";

		return runner.query(sql, new BeanListHandler<Pictures>(Pictures.class), colour,version);

	}

}
