package com.medici.arang.board.artist.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.medici.arang.board.artist.command.ArtworkCommand;
import com.medici.arang.board.artist.service.ArtworkServiceImpl;
import com.medici.arang.user.service.ArtistServiceImpl;


@Controller
public class ArtworkInfoController {
	
	@Autowired
	public ArtworkServiceImpl artworkService;
	
	@Autowired
	public ArtistServiceImpl artistservice;
	
	//	작품추가 페이지FORM
	@GetMapping("/artwork_board/artwork_info")
	public String artworkForm(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object loginEmail = session.getAttribute("email");
		if (loginEmail == null) {
			return "main";
		}
		model.addAttribute("artwork", new ArtworkCommand());
		return "artwork_board/artwork_info";
	}
	
	
	
}
