package com.medici.arang.board.exhibitions.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.medici.arang.board.exhibitions.command.FindExhibitionsCommand;
import com.medici.arang.board.exhibitions.service.ExhibitionServiceImpl;

@Controller
public class ExhibitionMainController {
	
	@Autowired
	ExhibitionServiceImpl exhibitionService;
	
	@GetMapping("/exhibitions/exhibitions_main")
	public String exhibitionMainForm(Model model) {
		List<FindExhibitionsCommand> exhibitionList = 
				exhibitionService.findContactExgibitions();
		model.addAttribute("exhibitionList", exhibitionList);
		return "exhibitions/exhibitions_main";
	}
	
}
