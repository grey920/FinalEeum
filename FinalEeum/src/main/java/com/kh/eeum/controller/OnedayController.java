package com.kh.eeum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OnedayController {
	
	
	@RequestMapping(value = "/OnedayList.one")
	public String OnedayList() {
		return "class_board/oneday_main";
	}
	
	@RequestMapping(value = "/OnedayDetail.one")
	public String OnedayDetail() {
		return "class_board/oneday_detail";
	}
	
}
