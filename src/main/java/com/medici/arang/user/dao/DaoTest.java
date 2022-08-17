package com.medici.arang.user.dao;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.medici.arang.common.jdbc.DataSourceConfig;


public class DaoTest {
	static private ArtistDao dao;
	
	public static void main(String[] args) {
		AnnotationConfigApplicationContext context = 
				new AnnotationConfigApplicationContext(DataSourceConfig.class);
		
		dao = context.getBean("artistDao", ArtistDao.class);
		findAll();
		context.close();
	}
	
	public static void findAll() {
		System.out.println("[findAll()]");
		Pageable pageable = PageRequest.of(0, 5, Sort.Direction.DESC, "regDate");
		dao.findAll(pageable).forEach(c -> System.out.println(c));
	}
}
