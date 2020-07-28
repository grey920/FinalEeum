package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Qna;

@Repository
public class QnaDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertboard(Qna qna) {
		return sqlSession.insert("Qnas.insert", qna);
	}

	public int getListCount() {
		return sqlSession.selectOne("Qnas.count");
	}

	public List<Qna> getBoardList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Qnas.list", map);
	}
	
	public int setReadCountUpdate(int num) {
		return sqlSession.update("Qnas.ReadCountUpdate", num);
	}

	public Qna getDetail(int num) {
		return sqlSession.selectOne("Qnas.Detail", num);
	}

	public int boardReplyUpdate(Qna qna) {
		return sqlSession.update("reply_update", qna);
	}

	public int boardReply(Qna qna) {
		return sqlSession.insert("Qnas.reply_insert", qna);
	}

}
