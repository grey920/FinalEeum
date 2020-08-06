package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;

import com.kh.eeum.domain.Like;

public interface LikeService {
	int insertLike(Like like);
	int selectLike(String expert_id, String user_id);
	void deleteLike(Like like);
	int wishlistCount(String user_id);
	List<Object> wishlist(String user_id, int page, int limit);
	int wishCheckCount(String user_id, int cate);
	List<Object> wishCheck(String user_id, int cate, int page, int limit);
	int memberRegisterDept(HashMap<String, String> paraMap);
	
}
