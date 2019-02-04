package com.demo.abstrct;


import java.util.Date;

import javax.ws.rs.core.Response;

import com.demo.pojo.UserFormPojo;

public interface UserMethodAbstract {

	public Response saveEmp(String name, long mobile, String address, Date birthday, String email, String city,
			UserFormPojo form);

}
