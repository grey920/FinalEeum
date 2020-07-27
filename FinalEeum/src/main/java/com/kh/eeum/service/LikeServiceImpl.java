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
		return likedao.insertLike(like);
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

	@Override
	public int wishlistCount(String user_id) {
		return likedao.wishlistCount(user_id);
	}

	@Override
	public List<Object> wishlist(String user_id, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit -1;
		
		map.put("user_id", user_id);
		map.put("start", startrow);
		map.put("end", endrow);
		
		return likedao.wishlist(map);
	}

	@Override
	public int wishCheckCount(String user_id, int cate) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("user_id", user_id);
		map.put("cate", cate);
		
		return likedao.wishCheckCount(map);
	}

	@Override
	public List<Object> wishCheck(String user_id, int cate, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit -1;
		
		map.put("user_id", user_id);
		map.put("cate", cate);
		map.put("start", startrow);
		map.put("end", endrow);
		
		return likedao.wishCheck(map);
	}

	@Override
	public int memberRegisterDept(HashMap<String, String> paraMap) {
		return likedao.insertLike(paraMap);
	}



}
