package com.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.entity.Customer;
//import com.entity.Orders;
//import com.entity.RoomType;
import com.service.CustomerService;
//import com.service.OrderService;
//import com.service.RoomTypeService;

/**
 * 前台请求action
 * 响应前台请求
 * 在打开页面时传送相关数据
 */

@Namespace("/index")
@Results({
	@Result(name="index",location="/index/index.jsp"),
	@Result(name="my",location="/index/success.jsp"),
	@Result(name="success",location="/index/success.jsp"),
	@Result(name="intro",location="/index/intro.jsp"),
	@Result(name="order",location="/index/order.jsp"),
	@Result(name="cart",location="/index/shopcart.jsp"),
	@Result(name="login",location="/index/login.jsp"),
	@Result(name="register",location="/index/register.jsp"),
	//@Result(name="registerpage",location="/index/register.jsp"),
	@Result(name="room_query",location="/index/room_query.jsp"),
	//@Result(name="room_querypage",location="/index/room_query.jsp"),
	@Result(name="room_detail",location="/index/room_detail.jsp"),
	@Result(name="room_detailpage",location="/index/room_detail.jsp"),
	@Result(name="reindex",type="redirectAction",location="index.action"),
	@Result(name="reorder",type="redirectAction",location="order.action"),
})	
public class IndexAction extends BaseAction{

	
	private static final long serialVersionUID = 1L;

	//定义属性, 用于struts自动封装参数
	private Customer customer;
//	private Orders order;
//	private RoomType roomtype;
	
	@Resource
	private CustomerService customerService;
//	@Resource
//	private OrderService orderService;
//	@Resource
//	private RoomTypeService roomtypeService;
	
	
	/*
	 * 响应主页请求
	 * */
	@Action("index")
	public String index(){
		
		return "index";
	}
	/*
	 * 注册页面
	 * */
	@Action("registerpage")
	public String registerpage() {
		return "register";	
	}
	/*
	 * 注册校验
	 * */
	@Action("register")
	public String register() {
		// 判断填写信息
		if (customer.getUsername()==null || customer.getUsername().trim().isEmpty()
				|| customer.getPassword()==null || customer.getPassword().trim().isEmpty()
				|| customer.getIdcard()==null || customer.getIdcard().trim().isEmpty()
				|| customer.getRealname()==null || customer.getRealname().trim().isEmpty()) {
			getRequest().put("msg", "(请先填写必要信息!!)");
			return "register";
		}
		// 判断用户名是否已经存在
		if (customerService.isCustomer(customer)) {
			getRequest().put("msg", "(用户名已存在!!)");
			return "register";
		}
		// 注册用户
		if (customerService.register(customer)) {
			getRequest().put("msg", "(注册成功, 请登录!!)");
			return "login";
		}else {
			getRequest().put("msg", "(系统错误, 注册失败!!)");	//系统原因导致注册失败时,返回注册页面
			return "register";
		}
	}
	/*
	 * 登录页面
	 * */
	@Action("loginpage")
	public String loginpage() {
		return "login";
	}
	/*
	 * 登录校验
	 * */
	@Action("login")
	public String login() {
		//判断填写信息
		if (customerService.getCustomer(customer.getUsername(),customer.getPassword())!=null) {
			this.getSession().put("username", customer.getUsername());//session中放置用户名, 标志用户已登录
			return "reindex";
		}else {
			this.getRequest().put("msg", "(用户名或密码错误!!)");
			return "login";
		}
	}
	/*
	 * 退出登录
	 * */
	@Action("logout")
	public String logout() {
		this.getSession().remove("username");
		return "index";
	}
	/*
	 * 
	 * */
	
	
	/*
	 * 酒店预览界面
	 * */
	@Action("room_querypage")
	public String room_querypage() {
		
		return "room_query";
	}
	/*
	 * 酒店房间界面校验:酒店预订日期校验
	 * */
	@Action("room_query")
	public String room_query() {
		
		return "room_detail";
	}
	
	/*
	 * 酒店预订校验
	 * */
	@Action("room_order")
	public String room_order() {
		return NONE;
		
	}
	
//	/**
//	 * 我的订单
//	 * @return
//	 */
//	@Action("order")
//	public String order(){
//		if (getSession().get("username")==null) {//如果没有登录  则跳转到登录页面
//			getRequest().put("msg", "(购物前请先登录用户!!)");
//			return "login";
//		}else {
//			String username = getSession().get("username").toString();//获取用户登录记录
//			List<Orders> orders = orderService.getOrders(username);	//获取订单信息
//			getRequest().put("orders", orders);//返回订单信息
//		}
//		return "order";
//	}
	/*
	 * 酒店详情界面
	 * */
	@Action("room_detailpage")
	public String room_detailpage() {
		return "room_detail";
	}
	/*
	 * 酒店详情界面
	 * */
	@Action("room_detail")
	public String room_detail() {
		//Object username = getSession().get("usernmae");
		//若没有登录，则跳转到登录界面
		if (getSession().get("username")==null) {
			return "login";
		}else {
			return "success";
		}
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
//	public Orders getOrder() {
//		return order;
//	}
//	public void setOrder(Orders order) {
//		this.order = order;
//	}
//	public RoomType getRoomtype() {
//		return roomtype;
//	}
//	public void setRoomtype(RoomType roomtype) {
//		this.roomtype = roomtype;
//	}
	

	
	
}
