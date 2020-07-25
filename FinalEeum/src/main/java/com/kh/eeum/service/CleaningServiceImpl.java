package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.CleaningRepairDAO;
import com.kh.eeum.dao.ExpertRepairDAO;
import com.kh.eeum.domain.Expert;

@Service
public class CleaningServiceImpl implements CleaningService {
	
	
	@Autowired
	private CleaningRepairDAO cleaningdao;

	@Override
	public List<Expert> expertlist(int page, int limit) {
		// map 형식으로 담는다.
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		System.out.println("리스트");
		return cleaningdao.getexpertList(map);
	}

	@Override
	public int getExpertListCountCleaning() {

		return cleaningdao.expert_CleaningCount();
	}



}
