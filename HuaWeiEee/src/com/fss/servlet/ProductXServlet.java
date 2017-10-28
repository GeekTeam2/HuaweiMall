package com.fss.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fss.bean.Pictures;
import com.fss.bean.ProductX;
import com.fss.service.ProductXService;
import com.google.gson.Gson;

public class ProductXServlet extends BaseServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/***
	 * 商品详情页
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String findProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		String colour = request.getParameter("colour");
		String sys = request.getParameter("sys");
		String version = request.getParameter("version");
		
		System.out.println(colour + "----------sysa:--" + sys+"---version------/."+version);

		ProductXService service = new ProductXService();
		List<ProductX> findProduct = service.findProduct(version, colour, sys);
		System.out.println(findProduct + "------------findProduct");
		Gson gson = new Gson();
		String json = gson.toJson(findProduct);
		// response.getWriter().write(json);
		System.out.println("商品详情页：-详情信息--------》" + json);
		return json;
	}

	public String findImage(HttpServletRequest request, HttpServletResponse response) throws SQLException {

		String colour = request.getParameter("colour");
		String version = request.getParameter("version");

		ProductXService service = new ProductXService();
		List<Pictures> findimg = service.findByImage(colour, version);

		Gson gson = new Gson();
		String json = gson.toJson(findimg);
		// response.getWriter().write(json);
		System.out.println("商品详情页：----详情IMG-----》" + json);
		return json;
	}

}
