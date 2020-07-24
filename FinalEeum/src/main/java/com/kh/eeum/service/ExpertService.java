package com.kh.eeum.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Reservation;
import com.kh.eeum.domain.Review;


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

	
	public int requestAjax(List<String> realFiles,  MultipartHttpServletRequest request,  Map<String, Object> paramMap, Reservation reservation);
	public int insertReservation(Reservation reservation);
	
	public int insert(Portfolio pf);
	public int deletePF(String expert_id);

	public Portfolio poexpertListOne(String expertid);
	
	public int getRequestCount(String expertid);
	
	//포폴 페이지 경력 및 사진
	public List<Portfolio> poexpertListOne1(String expert_id);
	

	public int modifyPF(Portfolio pf);
	
	// 수리수리수리수리	
	public int getExpertListCountRepair();
	
	//사용자 예약 리스트 내역 
	public int reserveCount(String user_id);	
	public List<Reservation> reserveList(String user_id, int page, int limit);
	public int cancelReserve(String rs_exid, String rs_uid, String rs_date);
	public List<Review> ReviewRatingList(String expert_id);
	
	//전문가 아이디 / 비번 찾기
	public String findId(String expert_name, String expert_jumin1, String expert_jumin2);
	public int findPwd(String expert_id, String expert_name, String expert_jumin1, String expert_jumin2);
	public int updatePwd(String expert_id, String expert_name, String expert_jumin1, String newPwd);
	


}
