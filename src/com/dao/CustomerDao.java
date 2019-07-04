package com.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.Customer;

/**
 * 顾客dao实现  
 * 负责顾客相关的数据库操作
 */
@Repository//注册dao层bean等同于@Component

public class CustomerDao extends BaseDao{

	
	//查找用户名是否存在
	public Customer getCustomer(String username) {
		return getSession().createQuery("from Customer where username=:username", Customer.class)
				.setParameter("username", username).uniqueResult();
	}
	//根据用户名和密码查找用户
	public Customer getCustomer(String username, String password){
		return getSession().createQuery("from Customer where username=:username and password=:password", Customer.class)
			.setParameter("username", username).setParameter("password", password).uniqueResult();
	}
	
	//获取顾客信息列表
	public List<Customer> getCustomers() {
		return getSession().createQuery("from Customer", Customer.class).list();
	}
	//根据id获取顾客信息
	public Customer getCustomer(int c_id) {
		return getSession().createQuery("from Customer where c_id=:c_id", Customer.class)
				.setParameter("c_id", c_id).uniqueResult();
	}

}
