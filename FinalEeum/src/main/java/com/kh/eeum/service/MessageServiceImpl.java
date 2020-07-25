package com.kh.eeum.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.MessageDAO;
import com.kh.eeum.domain.Message;

@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	private MessageDAO mdao;

	@Override
	public int send(Message message) {
		return mdao.send(message);
	}

	@Override
	public int sendCount(String id) {
		return mdao.sendCount(id);
	}

	@Override
	public List<Message> sendMsg(String id, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int startrow = (page -1) * limit + 1;
		int endrow = startrow + limit -1;
		
		map.put("msg_sid", id);
		map.put("start", startrow);
		map.put("end", endrow);
			
		return mdao.sendMsg(map);
	}

	@Override
	public int receiveCount(String id) {
		return mdao.receiveCount(id);
	}

	@Override
	public List<Message> receiveMsg(String id, int page, int limit) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		int startrow = (page -1) * limit + 1;
		int endrow = startrow + limit -1;
		
		map.put("msg_rid", id);
		map.put("start", startrow);
		map.put("end", endrow);
			
		return mdao.receiveMsg(map);
	}

	@Override
	public int msgRead(int msg_no) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		int msg_state = 1;
		
		map.put("msg_no", msg_no);
		map.put("msg_state", msg_state);
		
		return mdao.msgRead(map);
	}

}
