package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.QnA;
import com.kh.eeum.domain.Oneday;

public interface BoardService {

	public int getListCount();

	
	public List<QnA> getBoardList(int page, int limit);

	public void insertClass(QnA board);

	public QnA getDetail(int num);

}
