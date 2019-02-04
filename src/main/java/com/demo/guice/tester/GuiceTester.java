package com.demo.guice.tester;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.jboss.resteasy.annotations.Form;
import org.jboss.resteasy.annotations.providers.jaxb.Formatted;

import com.demo.app.module.AppModule;
import com.demo.pojo.UserFormPojo;
import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.Singleton;

@Path("/manage")
@Singleton
public class GuiceTester {

	Injector inj = Guice.createInjector(new AppModule());
	UserService user = inj.getInstance(UserService.class);

	@POST
	@Path("/save")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	@Formatted
	public Response saveEmp(@FormParam("name") String name, @FormParam("mobile") long mobile,
			@FormParam("address") String address, @FormParam("birthday") String birthday,
			@FormParam("email") String email, @FormParam("city") String city, @Form UserFormPojo form) {

		return user.saveEmp(name, mobile, address, birthday, email, city, form);
	}

}
