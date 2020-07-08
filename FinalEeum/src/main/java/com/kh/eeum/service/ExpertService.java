package com.kh.eeum.service;

import com.kh.eeum.domain.Expert;

public interface ExpertService {
	public int insert(Expert ex);
	public int isId(String expert_id, String expert_pass);
	public int isId(String expert_id);
	public Expert expert_info(String expert_id);
	public int expert_update(Expert ex);
}
