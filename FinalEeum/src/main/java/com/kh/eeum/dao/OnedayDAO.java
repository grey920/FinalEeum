package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Oneday;


@Repository
public class OnedayDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("Onedays.count");
	}

	
	public List<Oneday> getBoardList(HashMap<String, Integer> map) {
		return sqlSession.selectList("Onedays.list", map);
	}


	public int setReadCountUpdate(int num) {
		return sqlSession.update("Onedays.ReadCountUpdate", num);
	}


	public Oneday getDetail(int num) {
		return sqlSession.selectOne("Onedays.Detail",num);
	}


	public void insertClass(Oneday oneday) {
		sqlSession.insert("Onedays.insert", oneday);
	}


	public void insertOneday(HashMap<String, String> map) {
		sqlSession.insert("Onedays.insertCLOB", map);
		
	}


	public int boardDelete(Oneday oneday) {
		return sqlSession.delete("Onedays.delete", oneday);
	}


	public int onedayModify(Oneday modifyoneday) {
		return sqlSession.update("Onedays.modify", modifyoneday);
	}


	public int updateProg(Oneday oneday) {
		
		return sqlSession.update("Onedays.updateProg", oneday);
	}


	

}
