
package com.fss.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.fss.bean.Product;
import com.fss.utils.C3P0Utils;

public class ProductDao {

	public List<Product> findBySort(String sort) throws SQLException {

		// TODO 鏍规嵁sort鏌ヨ鏁版嵁搴?
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p where p.sort='热销单品';";
		System.out.println(sql+"...........");

		 List<Product> query = runner.query(sql, new BeanListHandler<Product>(Product.class));
		 System.out.println(query.toString()+",,,,,,,,,,");
		 return query;
	}

	public List<Product> findByQuality() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p where p.sort='精品推荐';";

		return (List<Product>) runner.query(sql, new BeanListHandler<Product>(Product.class));

	}

	public List<Product> findByMobile() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p where p.sort='手机';";

		return (List<Product>) runner.query(sql, new BeanListHandler<Product>(Product.class));
	}

	public List<Product> findByComputer() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p where p.sort='笔记本电脑';";

		return (List<Product>) runner.query(sql, new BeanListHandler<Product>(Product.class));
	}
	// like瀛楁------------------------------------
	public List<Product> findByPad() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p where p.sort='精品平板';";

		return (List<Product>) runner.query(sql, new BeanListHandler<Product>(Product.class));
	}

	// like瀛楁-------------鏅鸿兘绌挎埓-------------------------
	public List<Product> findByWear() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p where p.sort='智能穿戴';";

		return (List<Product>) runner.query(sql, new BeanListHandler<Product>(Product.class));

	}

	// 鏅鸿兘瀹跺眳
	public List<Product> findByHome() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p  where p.sort='智能家居';";

		return (List<Product>) runner.query(sql, new BeanListHandler<Product>(Product.class));

	}

	public List<Product> findByQualityDesc() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p  where p.sort='精品推荐' order by price desc;";
		return (List<Product>) runner.query(sql, new BeanListHandler<Product>(Product.class));
	}

	public List<Product> findByHotParts() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p where p.sort='热销配件' ; ";
		return (List<Product>) runner.query(sql, new BeanListHandler<Product>(Product.class));

	}

	public List<Product> findByBrand() throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product p where p.sort='品牌配件' ; ";
		return (List<Product>) runner.query(sql, new BeanListHandler<Product>(Product.class));
	}
	public Product orderFind(String id) throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product  where id = ? ;";
		return runner.query(sql, new BeanHandler<Product>(Product.class), id);
	}

	public Product findById(String id) throws SQLException {
		QueryRunner runner = new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from product  where id = ? ;";
		return runner.query(sql, new BeanHandler<Product>(Product.class), id);
	}
}
