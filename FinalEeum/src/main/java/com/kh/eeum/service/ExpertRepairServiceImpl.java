package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ExpertRepairDAO;
import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;

@Service
public class ExpertRepairServiceImpl implements ExpertRepairService {

	@Autowired
	private ExpertRepairDAO repairdao;
	
	
	
	@Override
	public int getExpertListCountRepair() {
		return repairdao.expert_RepairCount();
	
	}

	@Override
	public List<Expert> expertlist(int page, int limit) {
		// map 형식으로 담는다.
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return repairdao.getexpertList(map);
	}




}
