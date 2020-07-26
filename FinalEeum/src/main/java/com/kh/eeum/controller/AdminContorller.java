package com.kh.eeum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Report;
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

	@RequestMapping(value = "/admin.net")
	public ModelAndView adminEeum(ModelAndView mv) {
		int allUsers = adminservice.cUsers();
		int allReviews = adminservice.allReviews();
		int cPosts = adminservice.cPosts();
		int newUsers = adminservice.newUsers();
		mv.setViewName("admin_main");
		mv.addObject("allUsers", allUsers);
		mv.addObject("allReviews", allReviews);
		mv.addObject("cPosts", cPosts);
		mv.addObject("newUsers", newUsers);
		System.out.println("전체 회원 수 : " + allUsers);
		System.out.println("전체 후기 수 : " + allReviews);
		System.out.println("신규가입 회원 수 : " + newUsers);
		System.out.println("신규 후기 수 : " + cPosts);
		return mv;
	}

	@RequestMapping(value = "/about_us.net")
	public String aboutEeum() {
		return "about_us";
	}

	@RequestMapping(value = "/chartjs.bo")
	public String chartjs() {
		return "charts/chartjs";
	}

	@RequestMapping(value = "/reportU.net")
	public ModelAndView repUserList(ModelAndView mv) {
		List<Report> reportlist = null;
		Report rep = new Report();
		reportlist = adminservice.repUsers();
		mv.addObject("reportlist", reportlist);
		mv.setViewName("report/reportUser");
		System.out.println("삐용삐용 신고 겟판~~");
		return mv;
	}

	@RequestMapping(value = "/generalUser.bo")
	public ModelAndView generaluser(ModelAndView mv) throws Exception {
		List<User> list = null;
		list = userservice.getList();
		mv.addObject("userlist", list);
		mv.setViewName("user/generalUser");
		System.out.println("아 잠시만여~~~사용자 상세보기 가실게여~~~");
		return mv;
	}

	@RequestMapping(value = "/expertUser.bo")
	public ModelAndView expertUser(ModelAndView mv) {
		List<Expert> exlist = null;
		exlist = expertservice.getList();
		mv.addObject("exlist", exlist);
		mv.setViewName("user/expertUser");
		System.out.println("전문가 사용자 데이터 출력 지나가여~~");
		return mv;
	}

	@RequestMapping(value = "/expertDetail.net")
	public ModelAndView expert_detail(@RequestParam("id") String id, ModelAndView mv) throws Exception {
		Portfolio p = adminservice.getList(id);
		System.out.println("p:" + p.getPF_EXID());
		mv.setViewName("user/expertDetail");
		mv.addObject("deExperts", p);
		return mv;
	}

	@RequestMapping(value = "/price.list")
	public String goPrice() {
		return "service/price_list";
	}
}