package com.kh.eeum.service;

import java.util.List;

import com.kh.eeum.domain.Message;

public interface MessageService {
	
	public int send(Message message);
	public int sendCount(String id);
	public List<Message> sendMsg(String id, int page, int limit);
	public int receiveCount(String id);
	public List<Message> receiveMsg(String id, int page, int limit);
	public int msgRead(int msg_no);

}
