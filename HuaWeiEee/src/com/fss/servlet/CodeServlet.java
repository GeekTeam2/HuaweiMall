package com.fss.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CodeServlet extends BaseServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void findMo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String title = request.getParameter("title");
		System.out.println(title);
//		String a = "../servlet/CookieServletR?method=findMo&title='荣耀V9'";
//		System.out.println("---a--->>>>"+a);
//		String b = a.substring(a.indexOf("&") + 1);
		Cookie cookie2 = new Cookie("version", title);
		
		response.addCookie(cookie2);
		
		response.sendRedirect("../html/product.html");

	}
	
}
