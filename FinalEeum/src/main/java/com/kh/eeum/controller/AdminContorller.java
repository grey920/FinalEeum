package com.kh.eeum.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.User;
import com.kh.eeum.service.AdminService;
import com.kh.eeum.service.ExpertService;
import com.kh.eeum.service.UserService;
  
@Controller
public class AdminContorller {
	@Autowired
	private AdminService adminservice;
	
	@Autowired
	private UserService userservice;
	
	@Autowired
	private ExpertService expertservice;
	
	@RequestMapping(value="/admin.net")
	public ModelAndView adminhome(ModelAndView mv) {
		int allUsers= adminservice.cUsers();
		mv.setViewName("admin_main");
		mv.addObject("allUsers", allUsers);
		return mv;
	}
	
	@RequestMapping(value="/chartjs.bo")
	public String chartjs() {
		return "charts/chartjs";
	}
	
	@RequestMapping(value="/report.net")
	public String report() {
		return "report/reportUser";
	}
	
	@RequestMapping(value="/generalUser.bo")
	public ModelAndView generaluser(ModelAndView mv) throws Exception{
		List<User>list = null;
		list = userservice.getList();
		mv.addObject("userlist",list);
		mv.setViewName("user/generalUser");
		System.out.println("입벌려 사용자 데이터 출력한다");
		return mv;
	}

	@RequestMapping(value="/expertUser.bo")
	public ModelAndView expertUser(ModelAndView mv) {
		List<Expert> exlist =null;
		exlist = expertservice.getList();
		mv.addObject("exlist", exlist);
		mv.setViewName("user/expertUser");
		System.out.println("판벌려 관리자 사용자 데이터 출력한다");
		return mv;
	}
	
	@RequestMapping(value="/expertDetail.net")
	public ModelAndView expert_detail(@RequestParam("id") String id, ModelAndView mv) throws Exception{
		Portfolio p = adminservice.getList(id);
		
		System.out.println("p:"+p.getPF_EXID());
		mv.setViewName("user/expertDetail");
		mv.addObject("deExperts", p);
		return mv;
	}
}