package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.QnaDAO;
import com.kh.eeum.domain.Qna;

@Service
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	QnaDAO dao;

	@Override
	public int insertboard(Qna qna) {
		return dao.insertboard(qna);
	}

	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<Qna> getBoardList(int page, int limit) {
		HashMap<String, Integer> map= new HashMap<String, Integer>();
		int startrow = (page-1)* limit+1;
		int endrow = startrow+limit-1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getBoardList(map);
	}
	
	public int setReadCountUpdate(int num) {
		return dao.setReadCountUpdate(num);
	}
	
	public Qna getDetail(int num) {
		if(setReadCountUpdate(num)!=1)
			return null;
		return dao.getDetail(num);
	}

	private int boardReplyUpdate(Qna qna) {
		return dao.boardReplyUpdate(qna);
	}

	@Override
	public int replyboard(Qna qna) {
		boardReplyUpdate(qna);
		qna.setQNA_RE_LEV(qna.getQNA_RE_LEV()+1);
		qna.setQNA_RE_SEQ(qna.getQNA_RE_SEQ()+1);
		return dao.boardReply(qna);
	}


}
