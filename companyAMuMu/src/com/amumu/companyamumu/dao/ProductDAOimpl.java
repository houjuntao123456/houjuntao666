package com.amumu.companyamumu.dao;

import java.util.List;


import com.amumu.companyamumu.entity.Product;

public class ProductDAOimpl{


	public int addpro(Product product) {
		String sql = "INSERT INTO PRODUCT(serialNumber,name,brand,model,price,picture,description) VALUES(?,?,?,?,?,?,?)";

		Object[] params = {product.getSerialNumber(),product.getName(),product.getBrand(),product.getModel(),product.getPrice(),product.getPicture(),product.getDescription()  };

		return BaseDAO.executeUpdate(sql, params);
	}

	public int deleteProID(String productID) {
		String sql = "DELETE FROM PRODUCT WHERE productID = ? ";

		Object[] params = {productID };

		return BaseDAO.executeUpdate(sql, params);
	}


	public List<Product> FinProduct() {
		String sql = "SELECT * FROM PRODUCT";

		Object[] params = {};

		return BaseDAO.find(sql, params, Product.class);
	}


	public int updateProduct(Product product) {
		String sql = "update PRODUCT set serialNumber=?,name=?,brand=?,model=?,price="+product.getPrice()+",picture=?,description=? where productID="+product.getProductID()+"";
		
		Object[] params = {product.getSerialNumber(),product.getName(),product.getBrand(),product.getModel(),product.getPicture(),product.getDescription() };
		
		return BaseDAO.executeUpdate(sql, params);
		
	}


	public Product FindPro(String productID) {
		Product pot = null;
		String sql = "SELECT * FROM PRODUCT where productID=?";

		Object[] params = {productID };
		
		List<Product> pou = BaseDAO.find(sql, params, Product.class);
		
		if (pou.size()>0) {
			pot = pou.get(0);
		}

		return pot;
	}

}
