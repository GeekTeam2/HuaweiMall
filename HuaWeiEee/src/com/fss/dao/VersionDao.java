package com.fss.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.fss.bean.Version;
import com.fss.utils.C3P0Utils;

public class VersionDao {

	public List<Version> findAll(String version) throws SQLException {

		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		// 1.查询order
		String sql = "select * from total t where  t.version=? ;";

		return runner.query(sql, new BeanListHandler<Version>(Version.class), version);

	}

}
