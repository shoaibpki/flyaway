package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Source_destination;
import com.util.HibernateUtil;

public class FlyDao {

	static SessionFactory factory = HibernateUtil.getSessionFactory();
	static Session session = factory.openSession();
	
//	add student
	public static void saveData(Source_destination cls) {
		Transaction tx = session.beginTransaction();
		session.clear();
		session.save(cls);
		tx.commit();
	}
	

}
