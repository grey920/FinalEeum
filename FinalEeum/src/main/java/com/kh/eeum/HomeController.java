package com.kh.eeum;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	@Autowired
	private DAO dao;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@ResponseBody
	@RequestMapping(value="insert", produces="text/html;charset=utf-8")
	public String insert(DTO dto) {
		dao.insert(dto);
		return "성공";
	}
	
	@ResponseBody
	@RequestMapping(value="list", produces="application/json; charset=utf-8")
	public List<DTO> list() {
		List<DTO> list = dao.select();
		return list;
	}
	
	@RequestMapping("error")
	public String toError() {
		return "error";
	}
	
	@ExceptionHandler(Exception.class)
	public String errorHandler() {
		return "redirect:/error";
	}
	
}
