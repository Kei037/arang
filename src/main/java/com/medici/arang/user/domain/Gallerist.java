package com.medici.arang.user.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class Gallerist {
	private long gid;
	private String email;
	private String passwd;
	private String name;
	private String owner;
	private String corporateNum;
	private String corporatePhone;
	private String ssn;
	
	public Gallerist() {
		
	}
	
	public Gallerist(long gid) {
		this.gid = gid;
	}
}
