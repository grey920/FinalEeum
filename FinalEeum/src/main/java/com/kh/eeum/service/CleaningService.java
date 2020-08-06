package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Expert;


public interface CleaningService {

	
	
	public List<Expert> expertlist(int page, int limit);

	public int getExpertListCountCleaning();

}
