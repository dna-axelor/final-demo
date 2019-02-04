package com.demo.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.demo.hibernate.pojo.UserData;

public class DemoDao {

	private static SessionFactory factory;

	public List<UserData> Display() {

		factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();

		String hql = "from UserData";
		Query query = session.createQuery(hql);
		List<UserData> hq = (List<UserData>) query.getResultList();

		return hq;
	}

	public boolean delete(int id) {
		factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();

		Query query = session.createQuery("delete UserData where id = :id");
		query.setParameter("id", id);
		session.beginTransaction();
		query.executeUpdate();
		session.getTransaction().commit();
		return true;
	}

	public List<UserData> get(int id) {
		factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();

		String hql = "select * from UserData where id = :id";
		SQLQuery query = session.createNativeQuery(hql);
		query.addEntity(UserData.class);
		query.setParameter("id", id);

		List results = query.list();

		return results;
	}
	
	public boolean update(int id, String name, long mobile,String address,String birthday,String email,String city) {

		factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();

		String hql = "update UserData SET name = :name,mobile = :mobile,address = :address,birthday = :birthday,email = :email,city = :city where id = :id";
		Query query = session.createNativeQuery(hql);
		query.setParameter("id", id);
		query.setParameter("name", name);
		query.setParameter("address", address);
		query.setParameter("mobile", mobile);
		query.setParameter("birthday", birthday);
		query.setParameter("email", email);
		query.setParameter("city", city);

		session.beginTransaction();
		query.executeUpdate();
		session.getTransaction().commit();
		return true;
	}
	

}
