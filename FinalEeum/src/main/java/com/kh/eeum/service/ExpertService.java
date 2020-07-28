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
	public Reservation reserveCheck(String user_id, int num);
	public int reserveCount(String user_id);	
	public List<Reservation> ureserveList(String user_id, int page, int limit);
	public int cancelReserve(String rs_exid, String rs_uid, String rs_date);
	public List<Review> ReviewRatingList(String expert_id);
	
	//전문가 아이디 / 비번 찾기
	public String findId(String expert_name, String expert_jumin1, String expert_jumin2);
	public int findPwd(String expert_id, String expert_name, String expert_jumin1, String expert_jumin2);
	public int updatePwd(String expert_id, String expert_name, String expert_jumin1, String expert_pass);
	
	//전문가 미확정 예약
	public int estimateCount(String expert_id);
	public List<Map<String, Object>> estimateList(String expert_id, int page, int limit);
	
	//전문가 확정 예약
	public int exreserveCount(String expert_id);
	public List<Map<String, Object>> exreserveList(String expert_id, int page, int limit);
	
	//전문가 완료 예약
	public int completeCount(String expert_id);
	public List<Map<String, Object>> completeList(String expert_id, int page, int limit);
	
	//서비스 예약 취소
	public int reserveCancel(int rs_no);

	public Map<String, Object> estimateList(int request_no);

	// 서비스 결제 후 상태 업데이트
	public int updateState(String id, int rsIndex);

	public Map<String, Object> serviceForm(int rs_no);
	public int serviceYes(Reservation rv);
	public int serviceOk(int rs_no);
	
	public String getGrade(String expert_id);
	public String getName (String expert_id);
	
	//견적확인서
	public Map<String, Object> requestT(int request_no);
	public Reservation reserveT(int request_no);
	public List<Map<String, Object>> rfT(int request_no);

}
