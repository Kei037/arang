package com.medici.arang.board.artist.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.medici.arang.board.artist.command.ArtworkCommand;
import com.medici.arang.board.artist.service.ArtworkServiceImpl;
import com.medici.arang.user.command.ArtistCommand;
import com.medici.arang.user.command.ArtistPageCommand;
import com.medici.arang.user.service.ArtistServiceImpl;

@MultipartConfig(
	    fileSizeThreshold = 1024*1024,
	    maxFileSize = 1024*1024*50, 		//50메가
	    maxRequestSize = 1024*1024*50*5) 	// 50메가 5개까지
@Controller
public class ArtworkController {
	
	@Autowired
	public ArtworkServiceImpl artworkService;
	
	@Autowired
	public ArtistServiceImpl artistservice;
	
	//	작품추가 페이지FORM
	@GetMapping("/pages/add_artwork")
	public String artworkForm(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object loginEmail = session.getAttribute("email");
		if (loginEmail == null) {
			return "main";
		}
		model.addAttribute("artwork", new ArtworkCommand());
		return "pages/add_artwork";
	}
	
	// 카테고리 Select FORM
	@ModelAttribute("categoryProvicerList")
	public List<String> getCategoryList(){
		List<String> list = new ArrayList<String>();
		list.add("Sulptor");
		list.add("Painter");
		list.add("OrientalPainter");
		list.add("DrawingArtist");
		list.add("Illustator");
		list.add("DigitalArtist");
		list.add("Photographer");
		
		return list;
	}
	
	private static final String SAVE_DIR = "C:\\JavaYoung\\JavaStudy\\eclipse-workspace\\arang\\src\\main\\webapp\\resources\\img\\";
	private static final String PATH_DIR = "/upload_img/";
	
	//	작품추가 기능
	@PostMapping("/pages/add_artwork")
	public String addArtwork(@ModelAttribute("artwork")
						ArtworkCommand artwork, Model model, @RequestParam("imgFile") 
						MultipartFile file, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String loginEmail = (String) session.getAttribute("email");
		artistservice.getArtistByEmail(loginEmail);
		ArtistCommand artist = artistservice.getArtistByEmail(loginEmail);
		
		
		System.out.println("-----------");
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드
		long size = file.getSize(); //파일 사이즈
		
		System.out.println("파일명 : "  + fileRealName);
		System.out.println("용량크기(byte) : " + size);
		
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		System.out.println("생성된 고유문자열" + uniqueName);
		System.out.println("확장자명" + fileExtension);
		
		File saveFile = new File(SAVE_DIR+"\\artwork\\"+uniqueName + fileExtension);  // 적용 후
		try {
			file.transferTo(saveFile); // 실제 파일 저장메서드(filewriter 작업을 손쉽게 한방에 처리해준다.)
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		artwork.setImgPath(PATH_DIR+"\\artwork\\"+uniqueName+fileExtension);
		String imgName = artwork.getImgPath();
		model.addAttribute("imgName", imgName);

		// 아티스트ID값을 외래키로 쓰지만 현재 ID값이 없어 임의값 입력
		artwork.setArtistId(artist.getAid());
		
		artworkService.addArtwork(artwork);
		return "pages/test";
	}
	
	
	// 작품수정 Form
	@GetMapping("/pages/update_artwork")
	public String updateArtworkForm(@RequestParam("id") long id,Model model) {
		model.addAttribute("artwork", new ArtworkCommand());
		String email = "test@naver.com";
		
		ArtworkCommand artworkCommand = artworkService.findArtwork(id);
		
		model.addAttribute("artworkCommand", artworkCommand);
		return "pages/update_artwork";
	}
	
	// 작품수정 기능
	@PostMapping("/pages/update_artwork")
	public String updateMenu(@ModelAttribute("artwork") ArtworkCommand artwork,
					Model model, @RequestParam("imgFile") MultipartFile file) {
		String email = "test@naver.com";
		
		System.out.println("-----------");
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드
		long size = file.getSize(); //파일 사이즈
		
		System.out.println("파일명 : "  + fileRealName);
		System.out.println("용량크기(byte) : " + size);
		
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		System.out.println("생성된 고유문자열" + uniqueName);
		System.out.println("확장자명" + fileExtension);
		
		File saveFile = new File(SAVE_DIR+"\\"+uniqueName + fileExtension);  // 적용 후
		try {
			file.transferTo(saveFile); // 실제 파일 저장메서드(filewriter 작업을 손쉽게 한방에 처리해준다.)
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		artwork.setImgPath(PATH_DIR+uniqueName+fileExtension);
		String imgName = artwork.getImgPath();
		System.out.println(imgName);
		model.addAttribute("imgName", imgName);
		
		artwork.setArtistId(1001);
		artworkService.updateArtwork(artwork);
		
		return "pages/update_artwork";
	}
	
	// 작품조회 Form
	@GetMapping("/pages/find_artwork")
	public String findArtworkForm(HttpServletRequest request) {
		long artistId = 1001;
		List<ArtworkCommand> findArtworkList = artworkService.allfindArtwork(artistId);
		request.setAttribute("findArtworkList", findArtworkList);
		return "pages/find_artwork";
	}
	
	
	// 작품삭제 기능
	@PostMapping("/pages/find_artwork")
	public String deleteArtwork(HttpServletRequest request) {
		String StringId = request.getParameter("id");
		long id = Long.parseLong(StringId);
		artworkService.deleteArtwork(id);
		long artistId = 101;
		List<ArtworkCommand> findArtworkList = artworkService.allfindArtwork(artistId);
		request.setAttribute("findArtworkList", findArtworkList);
		return "pages/find_artwork";
	}
	
	
	// 작품전체 조회 Form ( 일반유저페이지 )
	@GetMapping("/pages/all_find_artwork")
	public String allFindArtworkForm(HttpServletRequest request) {
		List<ArtworkCommand> findArtworkList = artworkService.allFindArtwork();
		request.setAttribute("findArtworkList", findArtworkList);
		return "pages/all_find_artwork";
	}
	
	
	//	test
	@GetMapping("/artist_board/artist_main")
	public String findArtistForm(Model model) {
		List<ArtistCommand> artistList = artistservice.getAllArtist();
		List<ArtworkCommand> arkworkList = artworkService.allFindArtwork();
		
		
		
		for (ArtistCommand artist : artistList) {
			String email = artist.getEmail();
			System.out.println(email);
			artistservice.findAllArtistkByEmail(email);
			
			List<ArtistPageCommand> artistPageCommand = artistservice.findAllArtistkByEmail(email);
			for (ArtistPageCommand test : artistPageCommand) {
				long id = findId();  // 1
				List<ArtworkCommand> artwork = artworkService.findArtworkByArtist(id);
				System.out.println(artwork);  // 작품 artworkCommand 배열 2개
				test.setArtworkCommand(artwork);
				System.out.println("결과값 = " + test.getArtworkCommand());
				System.out.println(test.getClass());
				ArrayList<ArtistPageCommand> result;
		//		result.add(test);
				model.addAttribute("test", test);
			}
		}
		
		model.addAttribute("artworkList", arkworkList);
		model.addAttribute("artistList", artistList);
		return "artist_board/artist_main";
	}
	
	public long findId() {
		long id;
		List<ArtistCommand> artistList = artistservice.getAllArtist();
		for (ArtistCommand artist : artistList) {
			String email = artist.getEmail();
			System.out.println(email);
			artistservice.findAllArtistkByEmail(email);
			
			List<ArtistPageCommand> artistPageCommand = artistservice.findAllArtistkByEmail(email);
			for (ArtistPageCommand test : artistPageCommand) {
				id = test.getAid();
				System.out.println(id);
				return id;
			}
		}
		return 777;
	}
	
	//	test2
	@GetMapping("/artist_board/artist_depth")
	public String artistInfoForm() {
		return "/artist_board/artist_depth";
	}
	
	
}
