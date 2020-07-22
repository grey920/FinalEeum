package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Like;

@Repository
public class LikeDAO {

	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertLike(Like like) {
		return sqlSession.insert("Likes.insertlike", like);
	}


	public Object listLike(HashMap<String, Object> map) {
		
		return sqlSession.selectOne("Likes.listLike", map);
	}


	public void deleteLike(Like like) {
		sqlSession.delete("Likes.deleteLike",like);
	}
	
	public int wishlistCount(String user_id) {
		return sqlSession.selectOne("Likes.wishlistCount", user_id);
	}
	
	public List<Object> wishlist(HashMap<String, Object> map) {
		return sqlSession.selectList("Likes.wishlist", map);
	}

}
