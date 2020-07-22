package com.kh.eeum.service;

import java.util.List;
import java.util.Map;

import com.kh.eeum.domain.Apply;

public interface ApplyService {

	public int insertApply(Apply apply);
	public Apply isId(String id, int num);
	public int getClassCount(int num);
	public int applyCount(String user_id);
	public List<Apply> applyList(String user_id, int page, int limit);
	public int cancel(String ap_id, String ap_cindex);
	public void deleteAll(String user_id);
	public int updateState(String id, int apIndex);
}
