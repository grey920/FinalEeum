package com.kh.eeum.service;

import java.util.List;
import java.util.Map;

import com.kh.eeum.domain.Apply;

public interface ApplyService {

	int insertApply(Apply apply);

	boolean isId(String id, int num);

	int getClassCount(int num);

	List<Map<String, Apply>> applyList(String user_id);
}
