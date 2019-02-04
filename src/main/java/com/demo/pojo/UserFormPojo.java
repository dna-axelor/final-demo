package com.demo.pojo;

import javax.ws.rs.FormParam;

public class UserFormPojo {

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@FormParam("name")
	private String name;
	@FormParam("mobile")
	private long mobile;
	@FormParam("address")
	private String address;
	@FormParam("birthday")
	private String birthday;

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	@FormParam("email")
	private String email;
	@FormParam("city")
	private String city;

}
