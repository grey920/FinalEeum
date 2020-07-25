package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Expert;

public interface InsectService {

	List<Expert> expertlist(int page, int limit);

	
	int getExpertListCountCleaning();

}
