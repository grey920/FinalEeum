package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;

public interface ExpertRepairService {

	public int getExpertListCountRepair();

	
	public List<Expert> expertlist(int page, int limit);
	


	
}
