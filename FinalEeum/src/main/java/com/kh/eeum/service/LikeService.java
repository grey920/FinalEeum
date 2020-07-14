package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Like;

public interface LikeService {
	int insertLike(Like like);

	List<Like> likeList(String expert_id, String user_id, int num);

}
