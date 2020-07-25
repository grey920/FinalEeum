package com.kh.eeum.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Comment;




@Repository
public class CommentDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount(int board_num) {	
		return sqlSession.selectOne("Comments.count",board_num);
	}

	public List<Comment> getCommentList(Map<String, Integer> map) {

		return sqlSession.selectList("Comments.getList", map);
	}

	public int commentsInsert(Comment c) {
		return sqlSession.insert("Comments.insert",c);
	}

	public int commnetDelete(int num) {
		return sqlSession.delete("Comments.delete",num);
	}
	
	public int commentsUpdate(Comment co) {
		return sqlSession.update("Comments.update",co);
	}
	
	
	

	
	
}
