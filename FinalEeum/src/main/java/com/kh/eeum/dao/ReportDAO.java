package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Report;
import com.kh.eeum.domain.Oneday;

@Repository
public class ReportDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("Reports.count");
	}

	public List<Report> getBoardList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Reports.list",map);
	}

	public Object insertClass(Report board) {
		return sqlSession.insert("Reports.insert", board);
	}

	public Report getDetail(int num) {
		return sqlSession.selectOne("Reports.Detail",num);
	}

	public int boardModify(Report board) {
		return sqlSession.update("Reports.modify",board);
	}

	public Report isBoardWriter(Map<String, Object> map) {
		return sqlSession.selectOne("Reports.BoardWriter",map);
	}

}
