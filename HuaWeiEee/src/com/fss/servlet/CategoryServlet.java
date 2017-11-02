package com.fss.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fss.bean.Category;
import com.fss.service.CategoryService;

import net.sf.json.JSONArray;

public class CategoryServlet extends BaseServlet {

	public void findAll(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// 2.调用业务逻辑
		CategoryService service = new CategoryService();

		List<Category> list = service.findAll();

		// list 转成json数组
		// list.add(e)

		JSONArray arry = JSONArray.fromObject(list);
		// response给ajax写回数据即可
		response.getWriter().print(arry.toString());

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
