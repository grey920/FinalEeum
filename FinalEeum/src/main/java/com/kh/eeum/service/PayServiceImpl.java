package com.kh.eeum.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.PayDao;
import com.kh.eeum.domain.Pay;

@Service
public class PayServiceImpl implements PayService {
	
	@Autowired
	private PayDao dao;

	@Override
	public Pay isId(String id, int num) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("P_UID", id);
		map.put("P_RS_NO", num);
		System.out.println("P_UID,P_RS_NO="+id+", "+num);
		Pay pay = dao.isId(map);
		return null;
	}

}
