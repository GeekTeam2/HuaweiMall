package com.fss.service;

import java.sql.SQLException;

import com.fss.bean.Orders;
import com.fss.dao.OrderDao;

public class OrderService {

	public void save(Orders orders) throws SQLException {
		OrderDao orderDao = new OrderDao();
		orderDao.save(orders);

	}

	public void update(Orders orders) throws SQLException {

		OrderDao orderDao = new OrderDao();
		orderDao.update(orders);

	}
}
