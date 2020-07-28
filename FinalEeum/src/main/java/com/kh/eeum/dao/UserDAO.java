package com.kh.eeum.dao;

import java.util.HashMap;
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
	
	public List<User> getList() {
		return sqlSession.selectList("Users.getList");
	}
	
	public String getNick(String user_id) {
		return sqlSession.selectOne("Users.getNick", user_id);
	}
	
	public String getProfile(String user_id) {
		return sqlSession.selectOne("Users.getProfile", user_id);
	}

	public List<Map<String, String>> findId(String user_name, String user_jumin1) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_name", user_name);
		map.put("user_jumin1", user_jumin1);
		return sqlSession.selectList("Users.findId", map);
	}

	public Map<String, String> findPwd(String user_id, String user_name, String user_jumin1) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("user_name", user_name);
		map.put("user_jumin1", user_jumin1);
		return sqlSession.selectOne("Users.findPwd", map);
	}

	public int updatePwd(Map<String, String> map) {
		return sqlSession.update("Users.updatePwd", map);
	}

	public String msgName(String msg_id) {
		return sqlSession.selectOne("Users.msgName", msg_id);
	}
	
}
