package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

/**
 * 顾客实体类
 * 与数据库相对应
 */
@Entity //hibernate模型
@Component //spring受管bean
public class Customer {
	@Id
	@GeneratedValue //id生成策略  默认auto 相当于hibernate的native - 自增字段
	private int c_id;
	private String username;
	private String password;
	private String idcard;
	private String realname;
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	
}
