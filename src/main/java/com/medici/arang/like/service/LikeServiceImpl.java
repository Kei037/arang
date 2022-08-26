package com.medici.arang.like.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.medici.arang.like.dao.LikeDao;
import com.medici.arang.like.domain.LikeVo;

public class LikeServiceImpl implements LikeService {
	
	@Autowired
	LikeDao likeDao;

	@Override
	public void updateLike(LikeVo likeVo, String userId, String targetValue) {
		likeDao.updateLike(likeVo, userId, targetValue);		
	}

	@Override
	public int getLike(String userId, String targetValue) {
		return likeDao.getLike(userId, targetValue);
	}

	@Override
	public void likeUp(LikeVo likeVo) {
		likeDao.likeUp(likeVo);
	}

	@Override
	public void likeDown(String userId, String targetValue) {
		likeDao.likeDown(userId, targetValue);
	}

	@Override
	public LikeVo findLike(String userId, String targetValue) {
		return likeDao.findLike(userId, targetValue);
	}

	@Override
	public List<LikeVo> findLike() {
		return likeDao.findLike();
	}

	@Override
	public List<LikeVo> findLike(String userId) {
		return likeDao.findLike(userId);
	}

	
}
