package com.fss.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.fss.bean.Base;
import com.fss.bean.Orders;
import com.fss.bean.Product;
import com.fss.bean.User;
import com.fss.service.OrderService;
import com.fss.service.ProductService;
import com.google.gson.Gson;

public class OrderServlet extends BaseServlet {

	public String orderFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
			//订单展示页面
		String id = request.getParameter("id");

		ProductService service = new ProductService();
		Product product = service.orderFind(id);
		Gson gson = new Gson();
		String json = gson.toJson(product);
		System.out.println(json);
		return json;
	}

	public String createOrder(HttpServletRequest request, HttpServletResponse response) {
		// 1.判断用户是否登录
		HttpSession session = request.getSession();
		// 获取session中的用户
		User user = (User) session.getAttribute("user");
		String total = request.getParameter("total");
		String id = request.getParameter("id");
		String adress = request.getParameter("adress");
		ProductService productService = new ProductService();
		Product product = null;
		try {
			product = productService.findById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Base<Orders> base = new Base<Orders>();
		if (user == null) {
			// 没有登录
			// request.setAttribute("msg","请登录后提交订单！");
			// return "/html/index.html";
			//0表示还没有登录，给前端发送一个0，前端收到后跳转到登录界面
			base.setCode(0);
			Gson gson = new Gson();
			String json = gson.toJson(base);
			System.out.println(json);
			return json;
		} else {

			Orders orders = new Orders();
			orders.setOid(UUID.randomUUID().toString());
			orders.setUser(user);
			orders.setTotal(total);
			orders.setProduct(product);
			orders.setOrdertime(new Date());
			OrderService orderService = new OrderService();
			try {
				orderService.save(orders);
				base.setCode(1);
				base.setContent(orders);
				Gson gson = new Gson();
				String json = gson.toJson(base);
				System.out.println(json);
				return json;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;

	}

	public String pay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException, IllegalAccessException, InvocationTargetException {
		// 模拟支付

		// 1.获取表单数据

		Orders orders = new Orders();
		orders.setState(1); // 已经支付
		BeanUtils.populate(orders, request.getParameterMap());
		Base base = new Base();
		// 2.调用业务逻辑
		OrderService service = new OrderService();
		service.update(orders);
		// 3.转发或者重定向

		// request.getSession().setAttribute("msg", "支付成功！3秒后跳转到登录页面！！！");
		//json传一个code为1给前端，表示支付成功
		base.setCode(1);
		Gson gson = new Gson();
		String json = gson.toJson(base);
		return json;

	}

}
