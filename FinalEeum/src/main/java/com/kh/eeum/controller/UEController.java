package com.kh.eeum.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kh.eeum.domain.User;
import com.kh.eeum.service.UserService;

@Controller
public class UEController {
	
	@Autowired
	private UserService userservice;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@RequestMapping("/")
	public String main() {
		return "home";
	}
	
	@RequestMapping(value="/join.net", method=RequestMethod.GET)
	public String userJoin() {
		return "join";
	}
	
	@RequestMapping(value="joinProcess.net", method=RequestMethod.POST)
	public void joinProcess(User user, HttpServletResponse response) throws Exception {
		MultipartFile uploadfile = user.getUploadfile();
		
		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			user.setUser_profile(fileName);
		}
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String encPassword = passwordEncoder.encode(user.getUser_pass());
		System.out.println(encPassword);
		user.setUser_pass(encPassword);
		
		int result = userservice.insert(user);
		System.out.println("*");
		out.println("<script>");
		
		if (result==1)  {
			System.out.println("*");
			out.println("alert('Welcome to 이음');");
			out.println("location.href='login.net';");
			
		} else if (result==-1) {
			out.println("alert('당신은 이음과 함께 하실 수 없습니다.');");
			out.println("history.back()");
		}
		
		out.println("</script>");
		out.close();
	}
	
	@ResponseBody
	@RequestMapping(value="idcheck.net", method=RequestMethod.GET)
	public int idcheck(String user_id) {
		int result = userservice.isId(user_id);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="nickcheck.net", method=RequestMethod.GET)
	public int nickcheck(String user_nick) {
		int result = userservice.isNick(user_nick);
		return result;
	}
	
	@RequestMapping(value="login.net", method=RequestMethod.GET)
	public String login() {
		return "login";
	}
}
