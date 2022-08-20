package com.medici.arang.board.gallery.controller.gallery;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.medici.arang.board.gallery.command.GalleryPageCommand;
import com.medici.arang.board.gallery.service.GalleryInfoServiceImpl;

@Controller
public class GalleryMainController {
	
	@Autowired
	GalleryInfoServiceImpl galleryInfoService;
	
	@GetMapping("/gallery/gallery")
	public String Gallery(Model model) {
		List<GalleryPageCommand> galleryList = galleryInfoService.allFindGallery();
		
		for (GalleryPageCommand galleryCommand : galleryList) {
			String a = galleryCommand.getInfoImgPath();
			String[] b =  a.split(";");
			System.out.println(b[0]);
			String c = b[0];
			galleryCommand.setInfoImgPath(c);
			System.out.println(galleryCommand.getInfoImgPath());
		}
		
		model.addAttribute("galleryList", galleryList);
		return "gallery/gallery";
	}
}
