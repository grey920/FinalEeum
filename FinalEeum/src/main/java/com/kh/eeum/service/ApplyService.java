package com.kh.eeum.service;

import com.kh.eeum.domain.Apply;

public interface ApplyService {

	int insertApply(Apply apply);

	boolean isId(String id, int num);

	int getClassCount(int num);

}
