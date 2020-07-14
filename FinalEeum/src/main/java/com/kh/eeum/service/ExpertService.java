package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Expert;

public interface ExpertService {
	public int insert(Expert ex);
	public int isId(String expert_id, String expert_pass);
	public int isId(String expert_id);
	public Expert expert_info(String expert_id);
	public int expert_update(Expert ex);
	public int getExpertListCount();
	public List<Expert> expertlist(int page, int limit);
	public Expert expertlistOne(String expertid);
}
