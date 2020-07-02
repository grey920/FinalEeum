package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naver.myhome4.domain.Board;

@Repository
public class BoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("Boards.count");
	}

	
	public List<Board> getBoardList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Boards.list", map);
	}
	
	public void insertBoard(Board board) {
		sqlSession.insert("Boards.insert", board);
	}
	
	public int setReadCountUpdate(int num) {
		return sqlSession.update("Boards.ReadCountUpdate", num);
	}
	
	
	public Board getDetail(int num) {
		return sqlSession.selectOne("Boards.Detail", num);
	}


	public Board isBoardWriter(Map<String, Object> map) {
		return sqlSession.selectOne("Boards.BoardWriter", map);
	}

	
	public int boardModify(Board modifyboard) {
		return sqlSession.update("Boards.modify", modifyboard);
	}


	public int boardReply(Board board) {
		return sqlSession.insert("Boards.reply_insert", board);
	}
	
	public int boardReplyUpdate(Board board) {
		// 매퍼 파일들 중에 아이디가 하나만 있는 경우 매퍼 파일 namespace 생략 가능합니다.
		return sqlSession.update("reply_update", board);
	}


	public int boardDelete(Board board) {
		return sqlSession.delete("Boards.delete", board);
	}


}
