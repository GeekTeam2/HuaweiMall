package com.fss.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fss.bean.Product;
import com.fss.service.ProductService;
import com.google.gson.Gson;

public class ProductServlet extends BaseServlet {

	/**
	 * 鐑攢鍟嗗搧
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String showInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		//前端返回数据
		String sort = request.getParameter("sort");
		System.out.println("------------" + sort);

		// 2.连接数据库
		ProductService service = new ProductService();
		List<Product> findBySort = service.findBySort(sort);

		Gson gson = new Gson();
		String json = gson.toJson(findBySort);
		// response.getWriter().write(json);
		System.out.println("热销单品+++++++++》" + json);

		return json;
	}

	/**
	 * 绮惧搧鎺ㄨ崘
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 * @throws SQLException
	 */
	public String qualityShowInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// 1.鍙栧嚭浼犵殑鏁版嵁

		String sort = request.getParameter("sort");

		ProductService service = new ProductService();

		List<Product> product = service.findByQuality(sort);

		Gson gson = new Gson();
		String json = gson.toJson(product);
		// response.getWriter().write(json);
		System.out.println("精品推荐··········" + json);
		return json;
	}

	/**
	 * 鎵嬫満鎺ㄨ崘锛?
	 * 
	 * @param request
	 * @param response
	 */
	public String mobileShowInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// 1.鍙栧嚭浼犵殑鏁版嵁

		String sort = request.getParameter("sort");
		ProductService service = new ProductService();

		List<Product> product = service.findByMobile(sort);

		Gson gson = new Gson();
		String json = gson.toJson(product);
		// response.getWriter().write(json);
		System.out.println("手机+++-----銆?" + json);
		return json;
	}

	/**
	 * 绗旇鏈數鑴戞帹鑽愶細
	 * 
	 * @param request
	 * @param response
	 */
	public String computerShowInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// 1.鍙栧嚭浼犵殑鏁版嵁

		String sort = request.getParameter("sort");
		ProductService service = new ProductService();

		List<Product> product = service.findByComputer(sort);

		Gson gson = new Gson();
		String json = gson.toJson(product);
		// response.getWriter().write(json);
		System.out.println("笔记本电脑+++-----銆?" + json);
		return json;
	}

	/**
	 * 绮惧搧骞虫澘
	 * 
	 * @param request
	 * @param response
	 */
	public String padShowInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// 1.鍙栧嚭浼犵殑鏁版嵁

		String sort = request.getParameter("sort");
		ProductService service = new ProductService();

		List<Product> product = service.findByPad(sort);

		Gson gson = new Gson();
		String json = gson.toJson(product);
		// response.getWriter().write(json);
		System.out.println("精品平板***********-----" + json);
		return json;
	}

	/**
	 * 绌挎埓
	 * 
	 * @param request
	 * @param response
	 */
	public String wearShowInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// 1.鍙栧嚭浼犵殑鏁版嵁

		String sort = request.getParameter("sort");
		ProductService service = new ProductService();

		List<Product> product = service.findByWear(sort);

		Gson gson = new Gson();
		String json = gson.toJson(product);
		// response.getWriter().write(json);
		System.out.println("智能穿戴**********" + json);
		return json;
	}

	/**
	 * 鏅鸿兘瀹跺眳
	 * 
	 * @param request
	 * @param response
	 */
	public String homeShowInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// 1.鍙栧嚭浼犵殑鏁版嵁

		String sort = request.getParameter("sort");
		ProductService service = new ProductService();

		List<Product> product = service.findByHome(sort);

		Gson gson = new Gson();
		String json = gson.toJson(product);
		// response.getWriter().write(json);
		System.out.println("智能家居？？？？？？--" + json);
		return json;
	}

	/**
	 * 绮惧搧鎺ㄨ崘 鍊掑簭
	 * 
	 * @param request
	 * @param response
	 */
	public String qualityDescShowInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// 1.鍙栧嚭浼犵殑鏁版嵁

		String sort = request.getParameter("sort");
		ProductService service = new ProductService();

		List<Product> product = service.findByQualityDesc(sort);

		Gson gson = new Gson();
		String json = gson.toJson(product);
		// response.getWriter().write(json);
		System.out.println("精品推荐、、、、、、、、、、" + json);
		return json;
	}

	/**
	 * 鐑攢閰嶄欢
	 * 
	 * @param request
	 * @param response
	 */
	public String hotPartsShowInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		// 1.鍙栧嚭浼犵殑鏁版嵁

		String sort = request.getParameter("sort");

		ProductService service = new ProductService();
		List<Product> product = service.findByHotParts(sort);

		Gson gson = new Gson();
		String json = gson.toJson(product);
		// response.getWriter().write(json);
		System.out.println("热销配件----------》" + json);
		return json;
	}

	/**
	 * 鍝佺墝閰嶄欢
	 * 
	 * @param request
	 * @param response
	 */
	public String brandShowInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		// 1.获取数据库的数据
		String sort = request.getParameter("sort");

		ProductService service = new ProductService();
		List<Product> product = service.findByBrand(sort);

		Gson gson = new Gson();
		String json = gson.toJson(product);
		// response.getWriter().write(json);
		System.out.println(".......品牌配件" + json);
		return json;
	}
	
	public String orderFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

		
		String id = request.getParameter("id");

		ProductService service = new ProductService();
		Product product = service.orderFind(id);
		Gson gson = new Gson();
		String json = gson.toJson(product);
		System.out.println(json);
		return json;
	}

}
