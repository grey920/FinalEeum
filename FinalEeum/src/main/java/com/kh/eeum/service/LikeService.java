package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Like;

public interface LikeService {
	int insertLike(Like like);
	int selectLike(String expert_id, String user_id);
	void deleteLike(Like like);
	
}
