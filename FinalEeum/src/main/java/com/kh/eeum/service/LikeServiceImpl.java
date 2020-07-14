package com.kh.eeum.service;

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
	public List<Like> likeList(String expert_id, String user_id, int num) {
		// TODO Auto-generated method stub
		return null;
	}

}
