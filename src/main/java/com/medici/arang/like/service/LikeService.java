package com.medici.arang.like.service;

import java.util.List;

import com.medici.arang.like.domain.LikeVo;

public interface LikeService {
	void updateLike(LikeVo likeVo, String userId, String targetValue);
	int getLike(String userId, String targetValue);
	void likeUp(LikeVo likeVo);
	void likeDown(String userId, String targetValue);
	LikeVo findLike(String userId, String targetValue);
	List<LikeVo> findLike();
	List<LikeVo> findLike(String userId);
}
