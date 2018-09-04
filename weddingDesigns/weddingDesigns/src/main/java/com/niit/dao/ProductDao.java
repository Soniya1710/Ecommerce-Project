package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
	public void addProduct(Product p);
	public List<Product> viewAllProducts();
	public Product viewProductById(int id);
	public void delProduct(int id);
	public void updateProduct(Product p);
}
