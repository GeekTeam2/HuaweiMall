package com.fss.service;

import java.sql.SQLException;
import java.util.List;

import com.fss.bean.Pictures;
import com.fss.bean.ProductX;
import com.fss.dao.ProductXDao;

public class ProductXService {

	public List<ProductX> findProduct(String version,String colour,String sys) throws SQLException {
		
		return new ProductXDao().findProduct(version,colour,sys);
	}

	public List<Pictures> findByImage(String colour, String version) throws SQLException {
		// TODO Auto-generated method stub
		 return new ProductXDao().findByImage(colour,version);
	}





}
