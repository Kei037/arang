package com.medici.arang.like.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.medici.arang.like.domain.LikeVo;
import com.medici.arang.like.service.LikeServiceImpl;

@Controller("like.controller.LikeController")
public class LikeController {
	private LikeServiceImpl likeService;
	
	@Autowired
	public LikeController(LikeServiceImpl likeService) {
		this.likeService = likeService;
	}

	@ResponseBody 
	@PostMapping("/likeUp")
	public Map<String, String> likeup(@RequestBody LikeVo vo, Model model) {
		String userId = vo.getUserId();
		String targetValue = vo.getTargetValue();
		LikeVo findLike = likeService.findLike(userId, targetValue);
		Map<String, String> likeData = new HashMap<String, String>();
		
		System.out.println(userId);
		System.out.println(targetValue);
		System.out.println(vo.getLikeNum());
				
		if(findLike!=null) {
			likeService.likeDown(userId, targetValue);
			likeData.put("msg", "BookMark Delete");
			likeData.put("likeCheck", "0");
		} else {
			likeService.likeUp(vo);
			likeData.put("msg", "BookMark Add");
			likeData.put("likeCheck", "1");
			}
		return likeData;
	}
	
  	
  	
}
