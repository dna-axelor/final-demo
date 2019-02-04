package com.demo.abstrct;

import javax.ws.rs.core.Response;

import com.demo.pojo.UserFormPojo;

public interface UserMethodAbstract {

	public Response saveEmp(String name, long mobile, String address, String birthday, String email, String city,
			UserFormPojo form);

}
