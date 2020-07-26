package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Qna;

public interface QnaService {

	int insertboard(Qna qna);

	int getListCount();

	List<Qna> getBoardList(int page, int limit);

	int replyboard(Qna qna);

}
