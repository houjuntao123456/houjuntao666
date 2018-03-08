package com.amumu.companyamumu.dao;

import java.util.List;

import com.amumu.companyamumu.entity.Product;

public class ProductDao {
	
	public static final int PAGE_NUM = 5;// 定义产品列表页面显示产品个数

	/**
	 * 查询�?有产品信�?
	 * 
	 * @return 产品信息列表
	 */
	public List<Product> findAllProduct() {
		// SQL语句
		String sql = "SELECT * FROM product"
				+ " ORDER BY productID desc";
		// 参数数组
		Object[] params = {};
		
		// 执行BaseDAO类�?�用的查询方�?
		return BaseDAO.find(sql, params, Product.class);
	}

	/**
	 * 根据产品ID查找相关产品信息
	 * 
	 * @return 产品对象
	 */
	public Product findProductByID(String productID) {
		// 产品对象
		Product product = null;
		// SQL语句
		String sql = "SELECT * FROM product"
				+ " WHERE productID = ? ";
		// 参数数组
		Object[] params = { productID };
		// 执行BaseDAO类�?�用的查询方�?
		List<Product> products = BaseDAO.find(sql, params, Product.class);
		if (products.size() > 0) {
			product = products.get(0);
		}
		
		return product;
	}

	/**
	 * 实现产品分页显示
	 * 
	 * @param pageNo 当前页数
	 * @return 显示产品的列�?
	 */
	public List<Product> showProductForPage(int pageNo) {
		// 每页第一条记录的索引
		int startIndex = 0;
		if (pageNo > 1) {
			startIndex = PAGE_NUM * (pageNo - 1);
		}
//		String sql = "SELECT top "
//				+ PAGE_NUM
//				+ " * FROM product WHERE productID NOT IN ( select top "
//				+ number
//				+ " productID from product order by productID desc ) ORDER BY productID DESC";
		// SQL语句
		String sql = "SELECT * FROM product"
				+ " ORDER BY productID DESC"
				+ " limit " + startIndex + "," + PAGE_NUM;
		System.out.println(sql);
		// 参数数组
		Object[] params = {};

		// 执行BaseDAO类�?�用的查询方�?
		return BaseDAO.find(sql, params, Product.class);
	}

	/**
	 * 根据产品ID删除相关产品信息
	 * 
	 * @param productID 产品ID
	 * 
	 * @return 执行SQL语句影响数据库的行数
	 */
	public int deleteProductByID(String productID) {
		// SQL语句
		String sql = "DELETE FROM product"
				+ " WHERE productID = ? ";
		// 参数数组
		Object[] params =  { productID };
		
		// 执行BaseDAO类�?�用的增删改方法
		return BaseDAO.executeUpdate(sql, params);
	}

	/**
	 * 添加产品信息
	 * 
	 * @param product 封装了信息的产品对象
	 * 
	 * @return 执行SQL语句�?影响数据库的行数
	 */
	public int insertProduct(Product product) {
		// SQL语句
		String sql = "INSERT INTO"
				+ " product(serialNumber,name,brand,model,price,picture,description)"
				+ " VALUES(?,?,?,?," + product.getPrice()
				+ ",?,?)";
		// 参数数组
		Object[] params =  { product.getSerialNumber(),
				product.getName(), product.getBrand(), product.getModel(),
				product.getPicture(), product.getDescription() };
		
		// 执行BaseDAO类�?�用的增删改方法
		return BaseDAO.executeUpdate(sql, params);
	}
	/**
	 * 根据商品ID和对象参数修改商品信�?
	 * @param product封装了数据的商品对象
	 * @return 返回执行SQL语句，数据库影响行数
	 */
	public int updateProduct(Product product) {
		// SQL语句
		String sql = "UPDATE product"
				+ " SET serialnumber=?,name=?,brand=?,model=?,"
				+ "price=" + product.getPrice()
				+ ",picture=?,description=? WHERE productID="
				+ product.getProductID();
		// 参数数组
		Object[] params =  { product.getSerialNumber(),
				product.getName(), product.getBrand(), product.getModel(),
				product.getPicture(), product.getDescription() };
		
		// 执行BaseDAO类�?�用的增删改方法
		return BaseDAO.executeUpdate(sql, params);
	}

}
