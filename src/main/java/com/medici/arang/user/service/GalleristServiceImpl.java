package com.medici.arang.user.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.medici.arang.user.dao.GalleristDao;
import com.medici.arang.user.domain.Gallerist;



public class GalleristServiceImpl implements GalleristService {
	
	@Autowired
	GalleristDao galleristDao;
	
	@Override
	public void addGalleristUser(Gallerist gallerist) {
		galleristDao.addGalleristUser(gallerist);	
	}
	
	public boolean isValidUser(String email, String passwd) {
		return galleristDao.isValidUser(email, passwd);
	}

	
}
