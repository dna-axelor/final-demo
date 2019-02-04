package com.demo.guice.tester;

import java.util.Date;

import javax.ws.rs.core.Response;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.demo.abstrct.UserMethodAbstract;
import com.demo.hibernate.pojo.UserData;
import com.demo.pojo.UserFormPojo;

public class UserImplementation implements UserMethodAbstract {

	private static SessionFactory factory;

	public Response saveEmp(String name, long mobile, String address, Date birthday, String email, String city,
			UserFormPojo form) {

		UserData user = new UserData();
		user.setName(name);
		user.setMobile(mobile);
		user.setAddress(address);
		user.setBirthday(birthday);
		user.setEmail(email);
		user.setCity(city);

		factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();

		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();

		session.close();

		return Response.ok().entity("Saved.").build();
	}
}
