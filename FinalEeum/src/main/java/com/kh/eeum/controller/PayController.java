package com.kh.eeum.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.Pay;
import com.kh.eeum.domain.Reservation;
import com.kh.eeum.domain.User;
import com.kh.eeum.service.ExpertService;
import com.kh.eeum.service.PayService;
import com.kh.eeum.service.UserService;

@Controller
public class PayController {
	@Autowired
	ExpertService expertservice;
	
	@Autowired
	private UserService userservice;
	
	@Autowired
	PayService payService;
	
	@RequestMapping(value="Pay.net")
	public ModelAndView paynet(ModelAndView mv, HttpSession session, int num) {
		//int num == RS_NO
		String id = (String) session.getAttribute("user_id");
		Reservation res = expertservice.reserveCheck(id, num);
		System.out.println(res.getRs_exid());
		User user = userservice.user_info(id);
		
		mv.setViewName("UE/pay");
		mv.addObject("resData", res);
		mv.addObject("userinfo", user);
		System.out.println("페이컨트롤러 들어옴");
		return mv;
	}
	
	@RequestMapping(value="payments/paycomplete")
	public String payComplete(String id, int rsIndex, int price) {
		System.out.println("페이컨트롤러의 payComplete()");
		Reservation res = expertservice.reserveCheck(id, rsIndex);
		expertservice.updateState(id, rsIndex);
		System.out.println("rs_state=2로 업데이트 완료");
		return "redirect:/userpage.net";
		
	}

}
