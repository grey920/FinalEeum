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
}
