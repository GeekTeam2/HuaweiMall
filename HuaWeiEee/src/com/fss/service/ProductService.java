package com.fss.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fss.bean.Product;
import com.fss.dao.ProductDao;
import com.google.gson.Gson;

public class ProductService {

	public List<Product> findBySort(String sort) throws SQLException {
		return (List<Product>) new ProductDao().findBySort(sort);
	}

	public List<Product> findByQuality(String sort) throws SQLException {
		return new ProductDao().findByQuality();
	}

	public List<Product> findByMobile(String sort) throws SQLException {
		return new ProductDao().findByMobile();
	}

	public List<Product> findByComputer(String sort) throws SQLException {
		return new ProductDao().findByComputer();
	}

	public List<Product> findByPad(String sort) throws SQLException {
		return new ProductDao().findByPad();
	}

	public List<Product> findByWear(String sort) throws SQLException {

		return new ProductDao().findByWear();
	}

	public List<Product> findByHome(String sort) throws SQLException {

		return new ProductDao().findByHome();
	}

	// 精品倒序
	public List<Product> findByQualityDesc(String sort) throws SQLException {
		return new ProductDao().findByQualityDesc();
	}

	// 热销配件
	public List<Product> findByHotParts(String sort) throws SQLException {
		return new ProductDao().findByHotParts();
	}

	// 品牌推荐
	public List<Product> findByBrand(String sort) throws SQLException {
		return new ProductDao().findByBrand();
	}

	
	
	public Product orderFind(String id) throws SQLException {
		// TODO Auto-generated method stub
		return new ProductDao().orderFind(id);
	}

	public Product findById(String id) throws SQLException {
		// TODO Auto-generated method stub
		return new ProductDao().findById(id);
	}
	

}
