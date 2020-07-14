package com.kh.eeum.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.User;

@Repository
public class UserDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insert(User u) {
		return sqlSession.insert("Users.insert", u);
	}
	
	public List<Map<String, String>> isJumin(String user_jumin1) {			//주민번호 중복검사 
		return sqlSession.selectList("Users.jumincheck", user_jumin1);
	}
	
	public User isId(String user_id) {
		return sqlSession.selectOne("Users.idcheck", user_id);
	}
	
	public User isNick(String user_nick) {
		return sqlSession.selectOne("Users.nickcheck", user_nick);
	}

	public User user_info(String user_id) {
		return sqlSession.selectOne("Users.idcheck", user_id);
	}
	
	public int update(User u) {
		return sqlSession.update("Users.userupdate", u);
	}
	
	public void delete(String user_id) {
		sqlSession.delete("Users.userdelete", user_id);
	}
	
}
