package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.QnADAO;
import com.kh.eeum.domain.QnA;
import com.kh.eeum.domain.Oneday;


@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private QnADAO dao;
	
	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<QnA> getBoardList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page-1) *limit +1;
		int endrow = startrow + limit -1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getBoardList(map);
	}

	@Override
	public void insertClass(QnA board) {
	 dao.insertClass(board);
		
	}

	@Override
	public QnA getDetail(int num) {
		return dao.getDetail(num);
	}


}
