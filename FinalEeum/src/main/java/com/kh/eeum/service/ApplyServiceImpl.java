package com.kh.eeum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ApplyDAO;
import com.kh.eeum.domain.Apply;

@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	private ApplyDAO dao;

	@Override
	public int insertApply(Apply apply) {
		return dao.insertApply(apply);
	}
}
