package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.OnedayDAO;
import com.kh.eeum.domain.Oneday;



@Service
public class OnedayServiceImpl implements OnedayService{
	@Autowired
	private OnedayDAO dao;

	// 총 글의 갯수 구하기
	@Override
	public int getListCount() {
		return dao.getListCount();
	}

	@Override
	public List<Oneday> getBoardList(int page, int limit) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
	      int startrow=(page-1)*limit+1;
	      int endrow=startrow+limit-1;
	      map.put("start", startrow);
	      map.put("end", endrow);
	      return dao.getBoardList(map);
	}

	@Override
	public Oneday getDetail(int num) {
		if(setReadCountUpdate(num) != 1)
			return null;
		return dao.getDetail(num);
	}

	private int setReadCountUpdate(int num) {
		return dao.setReadCountUpdate(num);
	}

	@Override
	public void insertClass(Oneday oneday) {
		dao.insertClass(oneday);
	}

//	public void insertOneday(Oneday oneday) {
//		ObjectMapper om = new ObjectMapper();
//		HashMap<String, String> map = om.convertValue(oneday, HashMap.class);
//
//		dao.insertOneday(map);
//	}

	@Override
	public int boardDelete(int num) {
		int result = 0;
		   Oneday oneday = dao.getDetail(num);
		   if(oneday != null) {
			   result = dao.boardDelete(oneday);
		   }
	      return result;
	}

	@Override
	public int onedayModify(Oneday modifyoneday) {
		return dao.onedayModify(modifyoneday);
	}

	@Override
	public int updateProg(int num) {
		int result = 0;
		Oneday oneday = dao.getDetail(num);
		if(oneday != null) {
			result = dao.updateProg(oneday);
		}
		return result;
	}


	
	
}
