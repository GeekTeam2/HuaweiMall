package com.fss.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BaseServlet extends HttpServlet {
   
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    //todo 反射调用子类的对象方法解决 创建多个Servlet对象的问题
		//利用知识点： 反射  servlet的进化史
	    //this 是实现子类的对象
		Class<? extends BaseServlet> clazz = this.getClass();
		//获取方法的名字
		String  name  = req.getParameter("method");
		
		if(name == null)
		{
			name = "index";
		}
		
		
		//获取调用方法
		try {
			Method method = clazz.getMethod(name, 
					HttpServletRequest.class,HttpServletResponse.class);
		    
			String json = (String) method.invoke(this, req,resp);
			
			if(json != null){
					
				PrintWriter out = resp.getWriter();
				out.print(json);
			}
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		


	
	}
	
	
	public String index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		return "/index.jsp";
	}
	
	

}
