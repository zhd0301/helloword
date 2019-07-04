package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CustomerDao;
import com.entity.Customer;
/*
 * 顾客service
 * */
@Service
@Transactional	//配置此方法加入事务管理
public class CustomerService {

	@Resource
	private CustomerDao customerDao;
	
	//用戶信息注冊
	public boolean register(Customer customer) {
		return customerDao.save(customer);
	}
	//判断用户名是否存在
	public boolean isCustomer(Customer customer) {
		if (customerDao.getCustomer(customer.getUsername())!=null) {
			return true;
		}return false;
	}

	//获取顾客信息
	public Customer getCustomer(String username, String password) {
		return customerDao.getCustomer(username, password);
	}
	
	//判断用户名是否存在
	public boolean isUser(Customer customer) {
		if (customerDao.getCustomer(customer.getUsername())!=null) {
			return true;
		}return false;
	}
	
	//添加顾客信息
	public void add(Customer customer) {
		customerDao.save(customer);
	}
		
	//获取顾客信息列表
	public List<Customer> getCustomers() {
		return customerDao.getCustomers();
	}
	
	//删除顾客信息
	public void delete(Customer customer) {
		customerDao.delete(customer);
	}
	
	//根据id获取顾客信息
	public Customer getCustomer(int c_id) {
		return customerDao.getCustomer(c_id);
	}
}
