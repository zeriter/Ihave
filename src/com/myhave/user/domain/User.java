package com.myhave.user.domain;
/**
 * 用户信息类
 * @author 皇家科研小组
 * @version 1.0
 *  
 *
 */

public class User {
	private int id;
	private String name;
	private String tel;
	private String username;
	private String password;
	private String address;
	private String email;
	private String school;
	private int sex;
	private String qianming;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getQianming() {
		return qianming;
	}
	public void setQianming(String qianming) {
		this.qianming = qianming;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", tel=" + tel + ", username=" + username + ", password="
				+ password + ", address=" + address + ", email=" + email + ", school=" + school + ", sex=" + sex
				+ ", qianming=" + qianming + "]";
	}
	
	

}
