package com.medici.arang.user.dao;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

import com.medici.arang.user.domain.Gallerist;

public class GalleristDao {
	private JdbcTemplate jdbcTemplate;
	
	public GalleristDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	//갤러리 유저 추가
	public void addGalleristUser(Gallerist gallerist) {
		String sql = "INSERT INTO Gallerist (email, passwd, name, owner,"
				+ " corporateNum, corporatePhone, ssn)"
				+ " VALUES(?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, gallerist.getEmail(), gallerist.getPasswd(),
				gallerist.getName(), gallerist.getOwner(), gallerist.getCorporateNum(),
				gallerist.getCorporatePhone(), gallerist.getSsn());
	}
	
	//로그인 유효성 검증용
	public boolean isValidUser(String email, String passwd) {
		String sql = "SELECT count(*) FROM Gallerist WHERE email=? AND passwd=?";
		boolean result = true;
		int ishere = jdbcTemplate.queryForObject(sql, Integer.class, email, passwd);
		if(ishere == 0 ) {
			result = false; 
		}
		return result;		
	}
	

	
}
