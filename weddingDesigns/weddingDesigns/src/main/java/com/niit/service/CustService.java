package com.niit.service;

import java.util.List;

import com.niit.model.Customer;

public interface CustService {
Customer findById(Integer id);
	
	List<Customer> findAll();

	public void saveOrUpdate(Customer c);
	
	public void delete(int id);
	
	
}
