package com.demo.guice.tester;

import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.demo.abstrct.UserMethodAbstract;
import com.demo.pojo.UserFormPojo;
import com.google.inject.Inject;

@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
public class UserService {

	private final UserMethodAbstract abs;

	@Inject
	public UserService(UserMethodAbstract abs) {
		this.abs = abs;
	}

	public Response saveEmp(String name, long mobile, String address, String birthday, String email, String city,
			UserFormPojo form) {

		return abs.saveEmp(name, mobile, address, birthday, email, city, form);
	}

}
