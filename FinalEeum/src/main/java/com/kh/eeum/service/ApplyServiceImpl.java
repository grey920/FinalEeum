package com.kh.eeum.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ApplyDAO;
import com.kh.eeum.domain.Apply;

@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	private ApplyDAO dao;

	@Override
	public int insertApply(Apply apply) {
		return dao.insertApply(apply);
	}

	@Override
	public boolean isId(String id, int num) {
		Map<String ,Object> map = new HashMap<String, Object>();
		map.put("AP_ID", id);
		map.put("AP_CINDEX", num);
		System.out.println("id, num="+id +num);
		Apply apply = dao.isId(map);
		System.out.println("apply="+apply);
		if(apply != null)
			return false; //null이 아니다 -> 이미 가신청한 상태이다. -> 신청막기
			else{
				return true;
			}
					
	}

	@Override
	public int getClassCount(int num) {
		return dao.getClassCount(num);
	}
}
