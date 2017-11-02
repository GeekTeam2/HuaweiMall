package com.fss.dao;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.fss.bean.Orders;
import com.fss.utils.C3P0Utils;

public class OrderDao {

	public void save(Orders orders) throws SQLException {
		QueryRunner runner = new QueryRunner();
		String sql = "insert into order (oid,ordertime,total,state,address,name,telephone,uid,id) values(?,?,?,?,?,?,?,?,?);";

		Connection conn = C3P0Utils.getConnection();

		runner.update(conn, sql, orders.getOid(), orders.getOrdertime(), orders.getTotal(), orders.getState(),
				orders.getAddress(), orders.getName(), orders.getTelephone(), orders.getUser().getUid(),
				orders.getProduct().getId());
	}

	public void update(Orders orders) throws SQLException {

		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "update orders set  state = ? , name=?, address=?, telephone=? where oid = ? ;";
		runner.update(sql, orders.getState(), orders.getName(), orders.getAddress(), orders.getTelephone(),
				orders.getOid());
	}

}
