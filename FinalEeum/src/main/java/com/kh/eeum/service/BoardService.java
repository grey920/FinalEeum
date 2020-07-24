package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Board;
import com.kh.eeum.domain.Oneday;

public interface BoardService {

	public int getListCount();

	public List<Board> getBoardList(int page, int limit);

	public void insertClass(Board board);

}
