package com.niit.dao;

import java.util.List;

import com.niit.model.Customer;


public interface CustomerDao {

	public Customer findById(Integer id);
	public List<Customer> getItems();
	public void save(Customer c);
	public void update(Customer c);
	public void delete(int id);
	
}
