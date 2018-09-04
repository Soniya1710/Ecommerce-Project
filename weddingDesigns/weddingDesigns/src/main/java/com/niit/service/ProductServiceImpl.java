package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
@Service("ProductService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao pd;
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void addProduct(Product p) {
		pd.addProduct(p);
	}

	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public List<Product> viewAllProducts() {
		return pd.viewAllProducts();
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void delProduct(int id) {
		pd.delProduct(id);
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public void updateProduct(Product p) {
		pd.updateProduct(p);
	}

	
	/*
	@Transactional
	public Product viewProductById(int id) {
		
		return pd.viewProductById(id);
	}
*/
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
	public Product viewProductById(int id) {
		// TODO Auto-generated method stub
		return pd.viewProductById(id);
	}

	
	
}