package com.kh.eeum.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.eeum.domain.Message;

@Repository
public class MessageDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int send(Message message) {
		return sqlSession.insert("Messages.send", message);
	}

	public int sendCount(String id) {
		return sqlSession.selectOne("Messages.sendCount", id);
	}

	public List<Message> sendMsg(HashMap<String, Object> map) {
		return sqlSession.selectList("Messages.sendMsg", map);
	}

	public int receiveCount(String id) {
		return sqlSession.selectOne("Messages.receiveCount", id);
	}

	public List<Message> receiveMsg(HashMap<String, Object> map) {
		return sqlSession.selectList("Messages.receiveMsg", map);
	}

	public int msgRead(HashMap<String, Object> map) {
		return sqlSession.update("Messages.msgRead", map);
	}

}
