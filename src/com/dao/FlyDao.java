package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Airlines;
import com.entity.Flights;
import com.entity.Source_destination;
import com.util.HibernateUtil;

public class FlyDao {

	static SessionFactory factory = HibernateUtil.getSessionFactory();
	static Session session = factory.openSession();
	
//	add source and destination information in related table
	public static void saveSrcDest(Source_destination cls) {
		Transaction tx = session.beginTransaction();
		session.clear();
		session.save(cls);
		tx.commit();
	}
	
//	add Flights information in related table
	public static void saveFlight(Flights cls) {
		Transaction tx = session.beginTransaction();
		session.clear();
		session.save(cls);
		tx.commit();
	}

	//	add airline information in related table
	public static void saveAirline(Airlines cls) {
		Transaction tx = session.beginTransaction();
		session.clear();
		session.save(cls);
		tx.commit();
	}
	
	// get Source and destination list
	public static List<Source_destination> getSrcDest(String qry) {
		List list = session.createQuery(qry).list();
		return list;
	}

	// get Airline list
	public static List<Airlines> getAirlines(String qry) {
		List list = session.createQuery(qry).list();
		return list;
	}
}
