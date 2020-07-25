package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ReportDAO;
import com.kh.eeum.domain.Report;


@Service
public class ReportServiceImpl implements ReportService {

	
	
	
	@Autowired
	private ReportDAO dao;
	
	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<Report> getBoardList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page-1) *limit +1;
		int endrow = startrow + limit -1;
		map.put("start", startrow);
		map.put("end", endrow);
		return dao.getBoardList(map);
	}

	@Override
	public void insertClass(Report board) {
	 dao.insertClass(board);
		
	}

	@Override
	public Report getDetail(int num) {
		return dao.getDetail(num);
	}

	

}
