package com.medici.arang.user.command;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class GalleristCommand {
	private String email;
	private String passwd;
	private String name;
	private String owner;
	private String corporateNum;
	private String corporatePhone;
	private String ssn;	
}
