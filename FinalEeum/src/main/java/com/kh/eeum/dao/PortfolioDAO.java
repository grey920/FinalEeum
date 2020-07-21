package com.kh.eeum.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Portfolio;

@Repository
public class PortfolioDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	public Portfolio getPortfolio(String expert_id) {
		return sqlSession.selectOne("Portfolios.getPfInfo", expert_id);
	}


	public int insert(Portfolio pf) {
		System.out.println(pf.getPF_EXID()+"id입니다");
		System.out.println("loc는 "+pf.getPF_LOC());
		return sqlSession.insert("Portfolios.insert", pf);
	}


	public int deletePF(String expertid) {
		return sqlSession.delete("Portfolios.delete", expertid);
	}


	public int modifyPF(Portfolio pf) {
		return sqlSession.update("Portfolios.modify", pf);
	}
}
