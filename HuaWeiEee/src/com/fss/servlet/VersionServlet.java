package com.fss.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fss.bean.Version;
import com.fss.service.VersionService;
import com.google.gson.Gson;

public class VersionServlet extends BaseServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		
		String version = request.getParameter("version");
		System.out.println("version---------"+version);

		VersionService service = new VersionService();
		List<Version> findAll = service.findAll(version);

		Gson gson = new Gson();
		String json = gson.toJson(findAll);
		System.out.println("json------------" + json);

		return json;

	}

}
