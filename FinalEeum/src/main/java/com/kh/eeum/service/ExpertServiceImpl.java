package com.kh.eeum.service;


import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.eeum.dao.ExpertDAO;
import com.kh.eeum.domain.Expert;

@Service
public class ExpertServiceImpl implements ExpertService {

	@Autowired
	private ExpertDAO exdao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public int insert(Expert ex) {
		return exdao.insert(ex);
	}

	@Override
	public int isId(String expert_id, String expert_pass) {
		Expert ex = exdao.isId(expert_id);

		int result = -1;

		if (ex != null) {
			if (passwordEncoder.matches(expert_pass, ex.getExpert_pass())) {
				result = 1;
			} else {
				result = 0;
			}
		}
		return result;
	}

	@Override
	public int isId(String expert_id) {
		Expert ex = exdao.isId(expert_id);

		int result = -1;

		if (ex != null) {
			result = 0;
		}

		return result;
	}

	@Override
	public Expert expert_info(String expert_id) {
		return exdao.expert_info(expert_id);
	}

	@Override
	public int expert_update(Expert ex) {
		return exdao.update(ex);
	}


	@Override
	public List<Expert> getList() {
		return exdao.getList();
	}
	

	@Override
	public int getExpertListCount() {
		return exdao.expert_listCount();
	}

	@Override
	public List<Expert> expertlist(int page, int limit) {
		// map 형식으로 담는다.
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		int startrow = (page - 1) * limit + 1;
		int endrow = startrow + limit - 1;
		map.put("start", startrow);
		map.put("end", endrow);
		return exdao.getexpertList(map);
	}

	@Override
	public Expert expertlistOne(String expertid) {
		System.out.println("서비스 impl 넘어온 값: "+expertid);
		return exdao.getexpertListOne(expertid);
	}

}
