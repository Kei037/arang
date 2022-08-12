package com.medici.arang.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.medici.arang.user.command.GalleristCommand;
import com.medici.arang.user.domain.Gallerist;
import com.medici.arang.user.service.GalleristServiceImpl;

@Controller("controller.addGalleristController")
public class AddGalleristController {
	
	@Autowired
	GalleristServiceImpl galleristService;
	
	@GetMapping("/user/add_gallerist")
	public String addGalleristForm() {
		return "user/add_gallerist";
	}
	
	@PostMapping("user/add_gallerist")
	public String addGallerist(GalleristCommand galleristCommand,
			Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		model.addAttribute("galleryUserCommand", galleristCommand);
		
		Gallerist gallerist = new Gallerist();
		
		String email = galleristCommand.getEmail();
		
		//유효성 검증 작업해야하는 곳
		
		gallerist.setEmail(galleristCommand.getEmail());
		gallerist.setPasswd(galleristCommand.getPasswd());
		gallerist.setName(galleristCommand.getName());
		gallerist.setOwner(galleristCommand.getOwner());
		gallerist.setCorporateNum(galleristCommand.getCorporateNum());
		gallerist.setCorporatePhone(galleristCommand.getCorporatePhone());
		gallerist.setSsn(galleristCommand.getSsn());
		
		galleristService.addGalleristUser(gallerist);
		
		session.setAttribute("email", email);
		
		return "user/add_success";
	}

}
