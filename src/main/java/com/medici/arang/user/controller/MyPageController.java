package com.medici.arang.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.medici.arang.user.command.ArtistCommand;
import com.medici.arang.user.service.ArtistServiceImpl;

@Controller("controller.myPageController")
public class MyPageController {
	
	@Autowired
	ArtistServiceImpl artistService;
	
	@GetMapping("/user/find_all_user")
	public String find(HttpServletRequest request) {
		
		List<ArtistCommand> artistList = artistService.getAllArtist();
		request.setAttribute("artistList", artistList);
		
		return "user/find_all_user";
	}
	
	@PostMapping("/user/find_all_user")
	public String findForm(HttpServletRequest request) {
		
		List<ArtistCommand> artistList = artistService.getAllArtist();
		request.setAttribute("artistList", artistList);
		
		return "user/find_all_user";
	}
	
	@GetMapping("/user/mypage")
	public String mypageForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		
		ArtistCommand artistList = artistService.getArtistByEmail(email);
		request.setAttribute("artistList", artistList);
		return "user/mypage";		
		
	}
	
}
