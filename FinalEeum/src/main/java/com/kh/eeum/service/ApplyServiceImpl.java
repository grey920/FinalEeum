package com.kh.eeum.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ApplyDAO;
import com.kh.eeum.domain.Apply;

@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	private ApplyDAO adao;

	@Override
	public int insertApply(Apply apply) {
		return adao.insertApply(apply);
	}

	@Override
	public boolean isId(String id, int num) {
		Map<String ,Object> map = new HashMap<String, Object>();
		map.put("AP_ID", id);
		map.put("AP_CINDEX", num);
		System.out.println("id, num="+id +num);
		Apply apply = adao.isId(map);
		System.out.println("apply="+apply);
		
		if(apply != null)
			return false; //null이 아니다 -> 이미 가신청한 상태이다. -> 신청막기
			else{
				return true;
			}
					
	}

	@Override
	public int getClassCount(int num) {
		return adao.getClassCount(num);
	}
	
	@Override
	public int applyCount(String user_id) {
		return adao.applyCount(user_id);
	}
	
	@Override
	public List<Apply> applyList(String user_id, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int startrow = (page -1) * limit + 1;
		int endrow = startrow + limit - 1;
		
		map.put("ap_id", user_id);
		map.put("start", startrow);
		map.put("end", endrow);
		
		return adao.applyList(map);
	}

	@Override
	public int cancel(String ap_id, String ap_cindex) {
		Map<String, Object> map = new HashMap<String, Object>();
		int ap_prog = 0;
		map.put("ap_id", ap_id);
		map.put("ap_cindex", ap_cindex);
		map.put("ap_prog", ap_prog);
		
		return adao.cancel(map);
	}

	@Override
	public void deleteAll(String user_id) {
		adao.delete(user_id);
	}
	
}
