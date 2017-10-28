
package com.fss.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fss.bean.Base;
import com.fss.bean.User;
import com.fss.service.UserService;
import com.google.gson.Gson;

public class UserServlet extends BaseServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// User u = JSON.parseObject(data, User.class);
		// User u = new User();

		UserService service = new UserService();
		User user1 = null;
		try {
			user1 = service.find(email, password);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Base<User> base = new Base<User>();

		if (user1 == null) {

			base.setCode(0);

			Gson gson = new Gson();
			String json = gson.toJson(base);

			return json;
		} else {
			// request.getSession().setAttribute("user", user1);

//			base.setMsg();
			base.setUser(user1);
			base.setCode(1);
			base.setContent(user1);
			
			System.out.println(base+"------------");
			
			Gson gson = new Gson();
			String json = gson.toJson(base);
			System.out.println(json);
			return json;
		}
	
	}

	public String loginOut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().removeAttribute("user");
		request.getSession().invalidate();
		response.sendRedirect("HuaWeiE/html/index.html");
		return null;
	}
}
