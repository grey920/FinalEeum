package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Report;
import com.kh.eeum.domain.Oneday;

public interface ReportService {

	public int getListCount();

	
	
	
	public List<Report> getBoardList(int page, int limit);

	public void insertClass(Report board);

	public Report getDetail(int num);


}
