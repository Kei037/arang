package com.medici.arang.board.contact.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.medici.arang.board.contact.command.ContactCommand;
import com.medici.arang.board.contact.command.FindContactCommend;
import com.medici.arang.board.contact.dao.ContactDao;

public class ContactServiceImpl {
	
	@Autowired
	private ContactDao contactDao;
	
	public void contactGallery(ContactCommand contactCommand) {
		contactDao.contactGallery(contactCommand);
	}
	
	public List<ContactCommand> findContactList(long code) {
		return contactDao.findContactList(code);
	}
	
	public List<FindContactCommend> findArtistkById(long id) {
		return contactDao.findArtistkById(id);
	}
	public void acceptTpye(String accept, long id) {
		contactDao.acceptTpye(accept, id);
	}
}
