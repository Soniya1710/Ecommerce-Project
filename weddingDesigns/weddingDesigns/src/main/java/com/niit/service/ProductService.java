package com.niit.service;

import java.util.List;

import com.niit.model.Product;

public interface ProductService {

	public void addProduct(Product p);
	public List<Product> viewAllProducts();
	public void delProduct(int id);
	public void updateProduct(Product p);
	public Product viewProductById(int id);
}