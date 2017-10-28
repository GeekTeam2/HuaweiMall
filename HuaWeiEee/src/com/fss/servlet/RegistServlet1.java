package com.fss.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fss.bean.Base;
import com.fss.bean.User;
import com.fss.service.RegistService;
import com.fss.utils.UUIDUtils;
import com.google.gson.Gson;


/**
 * 用户注册
 * 
 * @author fushanshan
 *
 */
public class RegistServlet1 extends BaseServlet {

	private static final long serialVersionUID = 1L;

	public void regist(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1.设置跨域访问

		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "GET,POST");

		// String username = request.getParameter("email");
		// String password = request.getParameter("password");

		RegistService service = new RegistService();

		User user = new User();
		user.setUid(UUIDUtils.getId());
		user.setName(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		
		user.setUsername(request.getParameter("username"));
		service.regist(user);

		Base<User> base = new Base<User>();

		base.setCode(1);
		base.setContent(user);

		//转化为json对象。。。。。。。。。。。。。。。。。。。。。。。。
		Gson gson = new Gson();
		String json = gson.toJson(base);
		response.getWriter().write(json);

		System.out.println(json);

		// String jsonstring = json.toString();
		// System.out.println("jsonString+++++++>"+jsonstring);
		System.out.println("-------------------------------");

	}
}
