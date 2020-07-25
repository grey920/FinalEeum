package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.CommentDAO;
import com.kh.eeum.domain.Comment;


@Service
public class CommentServiceImpl implements CommentService{
	
	

	@Autowired
	private CommentDAO dao;

	@Override
	public int getListCount(int num) {
		return dao.getListCount(num);
	}

	@Override
	public List<Comment> getCommentList(int num, int page) {
		int startrow = (page-1)*3+1;
		int endrow = startrow + 3 - 1;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("num", num);
		map.put("page", page);
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getCommentList(map);
		
	}

	@Override
	public int commentsInsert(Comment c) {
		return dao.commentsInsert(c);
	}

	@Override
	public int commentsDelete(int num) {
		return dao.commnetDelete(num);
	}

	@Override
	public int commentsUpdate(Comment co) {
		return dao.commentsUpdate(co);
	}

}
