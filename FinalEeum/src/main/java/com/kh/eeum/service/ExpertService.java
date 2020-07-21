package com.kh.eeum.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;

public interface ExpertService {
	public int insert(Expert ex);
	public int isId(String expert_id, String expert_pass);
	public int isId(String expert_id);
	public Expert expert_info(String expert_id);
	public int expert_update(Expert ex);

	public int getExpertListCount();
	public List<Expert> expertlist(int page, int limit);
	public Expert expertlistOne(String expertid);

	public List<Expert> getList();
	public Portfolio getPortfolio(String expert_id);

	
	public int requestAjax(List<String> realFiles,  MultipartHttpServletRequest request,  Map<String, Object> paramMap);

	public int insert(Portfolio pf);
	public int deletePF(String expert_id);

	public Portfolio poexpertListOne(String expertid);
	
	public int getRequestCount(String expertid);
	
	//포폴 페이지 경력 및 사진
	public List<Portfolio> poexpertListOne1(String expert_id);
	//여러개 쭉 뽑아오기
	public List<Portfolio> poexpertListOne1(int page, int limit);


	public int modifyPF(Portfolio pf);

}
