package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.entity.Customer;
import com.service.CustomerService;

/**
 * 顾客action
 * 响应顾客信息的增删改查等功能
 */
@Namespace("/admin")
@Results({
	@Result(name="list",location="/admin/pages/customer-list.jsp"),
	@Result(name="add",location="/admin/pages/customer-add.jsp"),
	@Result(name="update",location="/admin/pages/customer-update.jsp"),
	@Result(name="relist",type="redirectAction",location="customerList.action"),
})
public class CustomerAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	
	//定义属性, 用于struts自动封装参数
	private Customer customer;

	@Resource
	private CustomerService customerService;
	
	//获取顾客信息列表
	@Action("customerList")
	public String list(){
		List<Customer> customers = customerService.getCustomers();
		getRequest().put("customers", customers);
		return "list";
	}
	
	//添加顾客信息
	@Action("customerAdd")
	public String add(){
		if (customerService.isUser(customer)) {		//判断用户名是否已经存在
			getRequest().put("msg", "(用户名已存在!!)");
			return "add";
		}else {
			customerService.add(customer);		//添加用户
			return "relist";
		}
	}
	//更新顾客信息
	@Action("customerAddpage")
	public String addpage(){
		return "add";
	}
	
	//更新顾客信息
	@Action("customerUpdatepage")
	public String updatepage(){
		customer = customerService.getCustomer(customer.getC_id());
		return "update";
	}
	//删除顾客信息
	@Action("customerDelete")
	public String customerDelete(){
		customerService.delete(customer);
		return "relist";
	}
	

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	

	
	/*//添加顾客信息
	@Action("customerAdd")
	public String customeradd(){
		if (customerService.isUser(customer)) {		//判断用户名是否已经存在
			getRequest().put("msg", "(用户名已存在!!)");
			return "add";
		}else {
			customerService.add(customer);		//添加用户
			return "relist";
		}
	}*/
	
}
