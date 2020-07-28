package com.kh.eeum.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Reservation;
import com.kh.eeum.domain.Review;




@Repository
public class ExpertDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insert(Expert ex) {
		return sqlSession.insert("Experts.insert", ex);
	}

	public Expert isId(String expert_id) {
		return sqlSession.selectOne("Experts.idcheck", expert_id);
	}

	public Expert isNick(String expert_nick) {
		return sqlSession.selectOne("Experts.nickcheck", expert_nick);
	}

	public Expert expert_info(String expert_id) {
		return sqlSession.selectOne("Experts.idcheck", expert_id);
	}

	public int update(Expert ex) {
		return sqlSession.update("Experts.expertupdate", ex);
	}


	public int expert_listCount() {
		// 전문가 총 리스수 가져옴
		return sqlSession.selectOne("Experts.expertcount");
	}

	public List<Expert> getexpertList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Experts.expertlist", map);
	}


	public Expert getexpertListOne(String expertid) {
		System.out.println("dao 넘어온 값: "+expertid);
		return sqlSession.selectOne("Experts.expertdetails", expertid);

	}

	public List<Expert> getList(){
		return sqlSession.selectList("Experts.expertList");

	}
	
	public Integer insertRequest(Map<String, Object> paramMap) {
		return sqlSession.insert("Experts.insertRequest", paramMap);		
	}

	public int insertRequestFileData(Map<String, Object> paramMap) {
		return sqlSession.insert("Experts.insertRequestFileData", paramMap);
	}

	public int insertReservation(Reservation reservation) {
		return sqlSession.insert("Experts.insertReservation", reservation);
	}
	
	public Portfolio poselectone(String expertid) {
		return sqlSession.selectOne("Experts.poselect",expertid);
	}

	public int getRquestCount(String expertid) {
		return sqlSession.selectOne("Experts.RequestCount", expertid);
	}

	public List<Portfolio> getPoList(Map<String, Object> map) {
		return sqlSession.selectList("Experts.PoList",map);
	}

	public List<Portfolio> getPoMulList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Experts.PoMulList",map);
	}


	public List<Review> ReviewRatingList(HashMap<String, Object> map) {
		return sqlSession.selectList("Experts.ReviewRating",map);
	}

	public int expert_listCountRepair() {
		// TODO Auto-generated method stub
		return 0;
	}

	public int reserveCount(String user_id) {
		return sqlSession.selectOne("Experts.reserveCount", user_id);
	}

	public List<Reservation> ureserveList(HashMap<String, Object> map) {
		return sqlSession.selectList("Experts.ureserveList", map);
	}
	
	public int cancelReserve(Map<String, Object> map) {
		return sqlSession.update("Experts.cancelReserve", map);
	}

	public List<Map<String, String>> findId(String expert_name, String expert_jumin1) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("expert_name", expert_name);
		map.put("expert_jumin1", expert_jumin1);
		return sqlSession.selectList("Experts.findId", map);
	}
	
	public Map<String, String> findPwd(String expert_id, String expert_name, String expert_jumin1) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("expert_id", expert_id);
		map.put("expert_name", expert_name);
		map.put("expert_jumin1", expert_jumin1);
		return sqlSession.selectOne("Experts.findPwd", map);
	}

	public int updatePwd(Map<String, String> map) {
		return sqlSession.update("Experts.updatePwd", map);
	}

	public int exreserveCount(HashMap<String, Object> map) {
		return sqlSession.selectOne("Experts.exreserveCount", map);
	}

	public List<Map<String, Object>> exreserveList(HashMap<String, Object> map) {
		return sqlSession.selectList("Experts.exreserveList", map);
	}

	public int reservingCount(HashMap<String, Object> map) {
		return sqlSession.selectOne("Experts.reservingCount", map);
	}

	public List<Map<String, Object>> reservingList(HashMap<String, Object> map) {
		return sqlSession.selectList("Experts.reservingList", map);
	}

	public int reserveCancel(int rs_no) {
		return sqlSession.update("Experts.reserveCancel", rs_no);
	}

	public Map<String, Object> estimateList(int request_no) {
		return sqlSession.selectOne("Experts.estimateList", request_no);
	}

	public Map<String, Object> serviceForm(int rs_no) {
		return sqlSession.selectOne("Experts.serviceForm", rs_no);
	}
	
	public int serviceYes(Reservation rv) {
		return sqlSession.update("Experts.serviceYes", rv);
	}

	public int serviceOk(int rs_no) {
		return sqlSession.update("Experts.serviceOk", rs_no);
	}

	public Reservation reserveCheck(Map<String, Object> map) {
		return sqlSession.selectOne("Experts.reserveCheck", map);
	}

	public int updateState(Map<String, Object> map) {
		return sqlSession.update("Experts.updateStatePay", map);
	}

	public String getGrade(String expert_id) {
		return sqlSession.selectOne("Experts.getGrade", expert_id);
	}
	
	public String getName(String expert_id) {
		return sqlSession.selectOne("Experts.getName", expert_id);
	}

	public Map<String, Object> requestT(int request_no) {
		return sqlSession.selectOne("Experts.requestT", request_no);
	}

	public Reservation reserveT(int request_no) {
		return sqlSession.selectOne("Experts.reserveT", request_no);
	}

	public List<Map<String, Object>> rfT(int request_no) {
		return sqlSession.selectList("Experts.rfT", request_no);
	}

}
