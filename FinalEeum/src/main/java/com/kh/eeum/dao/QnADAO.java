package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.QnA;
import com.kh.eeum.domain.Oneday;

@Repository
public class QnADAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int getListCount() {
		return sqlSession.selectOne("QnAs.count");
	}

	public List<QnA> getBoardList(HashMap<String, Integer> map) {
		return sqlSession.selectList("QnAs.list",map);
	}

	public Object insertClass(QnA board) {
		return sqlSession.insert("QnAs.insert", board);
	}

	public QnA getDetail(int num) {
		return sqlSession.selectOne("QnAs.Detail",num);
	}

}
