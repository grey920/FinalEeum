package com.kh.eeum.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ExpertController {
	
	@RequestMapping("/expert.list")
	public String service_list() {
		return "service/expert_list";
		
	}
	
	@GetMapping("/expert_details")
	public String service_details() {
		System.out.println("들어왔?>");
		return "service/expert_details";
	}
	//
	
}
