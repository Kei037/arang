package com.medici.arang.user.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.medici.arang.board.contact.command.ContactCommand;
import com.medici.arang.board.contact.command.FindContactCommend;
import com.medici.arang.board.contact.command.FindContactGalleryCommand;
import com.medici.arang.board.contact.service.ContactServiceImpl;
import com.medici.arang.board.gallery.command.GalleryCommand;
import com.medici.arang.board.gallery.service.GalleryService;
import com.medici.arang.board.gallery.service.GalleryServiceImpl;
import com.medici.arang.user.command.ArtistCommand;
import com.medici.arang.user.command.ArtistPageCommand;
import com.medici.arang.user.command.GalleristCommend;
import com.medici.arang.user.service.ArtistService;
import com.medici.arang.user.service.ArtistServiceImpl;
import com.medici.arang.user.service.GalleristServiceImpl;

@Controller("controller.myPageController")
public class MyPageController {
	
	@Autowired
	ArtistServiceImpl artistService;
	
	@Autowired
	GalleristServiceImpl galleristService;
	
	@Autowired
	ContactServiceImpl contactService;
	
	@Autowired
	GalleryServiceImpl galleryService;
	
	
	@GetMapping("/mypage/mypage_artist")
	public String artistMypageForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		
		ArtistCommand artist = artistService.getArtistByEmail(email);
		
		List<FindContactGalleryCommand> contactList = 
				contactService.findGalleryByEmail(artist.getAid());
		
		request.setAttribute("contactList", contactList);
		
		
		// 주민번호 처리 코드
		String ssn = artist.getSsn();
		String testone = ssn.substring(0, 8);
		System.out.println(testone);
		testone += "******";
		System.out.println(testone);
		request.setAttribute("ssn", testone);
		
		// 커리어 처리 코드
		String[] careerList = artist.getCareer().split(";");
		request.setAttribute("careerList", careerList);
		
		request.setAttribute("artist", artist);
		
		return "mypage/mypage_artist";
	}
	
	
	@GetMapping("/mypage/mypage_request_list2")
	public String requestPageForm2(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		ArtistCommand artist = artistService.getArtistByEmail(email);
		
		List<FindContactGalleryCommand> contactList = 
				contactService.findGalleryByEmail(artist.getAid());
		
		request.setAttribute("contactList", contactList);
		return "mypage/mypage_request_list2";
		
	}
	
	
	@PostMapping("/mypage/yesga")
	public String acceptBtnga(HttpServletRequest request) {
		String yesBtn = request.getParameter("yesBtn");
		long id = Long.parseLong(request.getParameter("contactId"));
		System.out.println(yesBtn);
		
		contactService.acceptTpye(yesBtn, id);
		
		return "redirect:/mypage/mypage_artist";
	}
	
	@PostMapping("/mypage/nodga")
	public String notBtnga(HttpServletRequest request) {
		String noBtn = request.getParameter("noBtn");
		long id = Long.parseLong(request.getParameter("contactId"));
		System.out.println(noBtn);
		
		contactService.acceptTpye(noBtn, id);
		
		return "redirect:/mypage/mypage_artist";
	}
	
	
	
	
	
	
	
	
	
	@GetMapping("/mypage/mypage_artist_modify")
	public String mypageUpdateForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		ArtistCommand artist = artistService.getArtistByEmail(email);
		request.setAttribute("artist", artist);
		
		// 주민번호 처리코드
		String ssn = artist.getSsn();
		String testone = ssn.substring(0, 8);
		System.out.println(testone);
		testone += "******";
		System.out.println(testone);
		request.setAttribute("ssn", testone);
		
		// 커리어 처리 코드
		String[] careerList = artist.getCareer().split(";");
		request.setAttribute("careerList", careerList);
		
		
		return "mypage/mypage_artist_modify";
	}
	
	
	private static final String SAVE_DIR = "C:\\JavaYoung\\JavaStudy\\eclipse-workspace\\arang\\src\\main\\webapp\\resources\\img\\";
	private static final String PATH_DIR = "/upload_img/";
	
	@PostMapping("/mypage/mypage_artist_modify")
	public String mypageUpdate(ArtistCommand inputArtsit, @RequestParam("imgFile") 
								MultipartFile file, HttpServletRequest request,
								Model model) {
		
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
		String forderName = inputArtsit.getName_eng();
		
		String path = SAVE_DIR + "artist\\" + forderName; //폴더 경로
		File Folder = new File(path);
		
		System.out.println(path);
		
		File saveFile = new File(SAVE_DIR + "artist/" + forderName + "/" + uniqueName + fileExtension);  // 적용 후
		try {
			file.transferTo(saveFile); // 실제 파일 저장메서드(filewriter 작업을 손쉽게 한방에 처리해준다.)
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		inputArtsit.setImgPath(PATH_DIR + "artist/" + forderName + "/" + uniqueName+fileExtension);
		String imgName = inputArtsit.getImgPath();
		System.out.println(imgName);
		if ( imgName == null ) {
			String oriImg = request.getParameter("oriImg");
			inputArtsit.setImgPath(oriImg);			
		}
		System.out.println(inputArtsit.getPasswd());
		System.out.println(inputArtsit.getPhone());
		
		model.addAttribute("artist", inputArtsit);
		String ssn = request.getParameter("ssn");
		inputArtsit.setSsn(ssn);
		model.addAttribute("ssn", ssn);
		
		artistService.updateArtist(inputArtsit);
		
		return "mypage/mypage_artist";
	}
	
	
	@GetMapping("/mypage/mypage_gallerist")
	public String galleristMypageForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");		
		GalleristCommend gallerist = galleristService.findMyGallerist(email);
		request.setAttribute("gallerist", gallerist);
		
		// 주민번호 처리코드
		String ssn = gallerist.getSsn();
		String testone = ssn.substring(0, 8);
		System.out.println(testone);
		testone += "******";
		System.out.println(testone);
		request.setAttribute("ssn", testone);
		
		
		return "mypage/mypage_gallerist";		
		
	}
	
	
	@GetMapping("/mypage/mypage_gallerist_modify")
	public String galleristmypageUpdateForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		GalleristCommend gallerist = galleristService.findMyGallerist(email);
		request.setAttribute("gallerist", gallerist);
		
		// 주민번호 처리코드
		String ssn = gallerist.getSsn();
		String testone = ssn.substring(0, 8);
		System.out.println(testone);
		testone += "******";
		System.out.println(testone);
		request.setAttribute("ssn", testone);
		
		return "mypage/mypage_gallerist_modify";
	}
	
	
	
	@PostMapping("/mypage/mypage_gallerist_modify")
	public String galleristmypageUpdate(GalleristCommend inputGallerist, 
								@RequestParam("imgFile") MultipartFile file, 
								HttpServletRequest request, Model model) {
		
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
		String forderName = inputGallerist.getName();
		
		String path = SAVE_DIR + "gallerist\\" + forderName; //폴더 경로
		File Folder = new File(path);
		
		System.out.println(path);
		if (!Folder.exists()) {
			try{
			    Folder.mkdir(); //폴더 생성합니다. ("새폴더"만 생성)
			    System.out.println("폴더가 생성완료.");
		        } 
		        catch(Exception e){
			    e.getStackTrace();
			}        
	         }else {
			System.out.println("폴더가 이미 존재합니다..");
		}
		
		File saveFile = new File(SAVE_DIR + "gallerist/" + forderName + "/" + uniqueName + fileExtension);  // 적용 후
		try {
			file.transferTo(saveFile); // 실제 파일 저장메서드
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		inputGallerist.setImgPath(PATH_DIR + "gallerist/" + forderName + "/" + uniqueName+fileExtension);
		String imgName = inputGallerist.getImgPath();
		System.out.println(imgName);
		if ( imgName == null ) {
			String oriImg = request.getParameter("oriImg");
			inputGallerist.setImgPath(oriImg);
			System.out.println(inputGallerist.getImgPath());
		}
		System.out.println(inputGallerist.getPasswd());
		System.out.println(inputGallerist.getPhone());
		System.out.println(inputGallerist.getImgPath());
		
		model.addAttribute("gallerist", inputGallerist);
		String ssn = request.getParameter("ssn");
		inputGallerist.setSsn(ssn);
		model.addAttribute("ssn", ssn);
		System.out.println(inputGallerist.getPasswd());
		System.out.println(inputGallerist.getImgPath());
		
		galleristService.updateGalleristByEmail(inputGallerist);
		
		
		return "mypage/mypage_gallerist";
	}
	
	
	
	@GetMapping("/mypage/artist_checkpage")
	public String artistCheckpage() {
		return "mypage/artist_checkpage";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// contact 부분
	
	@GetMapping("/mypage/mypage_request_list")
	public String requestPageForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String email = (String)session.getAttribute("email");
		GalleryCommand gallery = galleryService.findGalleryByEmail(email);
		
		List<FindContactCommend> contactList = 
				contactService.findArtistkById(gallery.getCode());
		
		request.setAttribute("contactList", contactList);
		return "mypage/mypage_request_list";
		
	}
	
	@PostMapping("/mypage/yesda")
	public String acceptBtnda(HttpServletRequest request) {
		String yesBtn = request.getParameter("yesBtn");
		long id = Long.parseLong(request.getParameter("contactId"));
		System.out.println(yesBtn);
		
		contactService.acceptTpye(yesBtn, id);
		
		return "redirect:/mypage/mypage_request_list";
	}
	
	@PostMapping("/mypage/noda")
	public String notBtn(HttpServletRequest request) {
		String noBtn = request.getParameter("noBtn");
		long id = Long.parseLong(request.getParameter("contactId"));
		System.out.println(noBtn);
		
		contactService.acceptTpye(noBtn, id);
		
		return "redirect:/mypage/mypage_request_list";
	}
	
	
	
	
}
