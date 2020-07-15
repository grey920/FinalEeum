package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.LikeDAO;
import com.kh.eeum.domain.Like;

@Service
public class LikeServiceImpl implements LikeService {

	@Autowired
	LikeDAO likedao;

	@Override
	public int insertLike(Like like) {
		return likedao.inertLike(like);
	}

	@Override
	public int selectLike(String expert_id, String user_id) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("expert_id", expert_id);
		map.put("user_id", user_id);
		Object obj = likedao.listLike(map);
		
		int num = 0;
		
		if(obj != null) {
			num =1;
			return num;
		}
		return num;
		
	}

	@Override
	public void deleteLike(Like like) {
		likedao.deleteLike(like);
	}



}
