package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Oneday;

public interface OnedayService {
	// 글의 갯수 구하기
	public int getListCount();

	public List<Oneday> getBoardList(int page, int limit);

	public Oneday getDetail(int num);

	public void insertClass(Oneday oneday);

	//public void insertOneday(Oneday oneday);

	public int boardDelete(int num);

	public int onedayModify(Oneday oneday);

	public int updateProg(int num);

	
}
