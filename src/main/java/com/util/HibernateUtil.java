package com.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		if (sessionFactory != null)
			return sessionFactory;
		
		Configuration configuration = new Configuration();
		configuration.configure("hibernate.cfg.xml");
		
		sessionFactory = configuration.buildSessionFactory();
		
		return sessionFactory;
	}

}
