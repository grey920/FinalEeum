package com.kh.eeum.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.User;
import com.kh.eeum.service.ExpertService;
import com.kh.eeum.service.UserService;

@Controller
public class UEController {
	
	@Autowired
	private UserService userservice;
	
	@Autowired
	private ExpertService expertservice;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Value("${savefoldername}")
	private String saveFolder;
	
	
	@RequestMapping("/")
	public String main() {
		return "home";
	}
	
	/* 회원가입 */
	@RequestMapping(value="userJoin.net", method=RequestMethod.GET)
	public String userJoin() {
		return "UE/user_join";
	}
	
	@RequestMapping(value="userJoinProcess.net", method=RequestMethod.POST)
	public void joinProcess(User user, HttpServletResponse response, HttpServletRequest request) throws Exception {
		MultipartFile uploadfile = user.getUploadfile();
		
		if (!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename();
			user.setUser_profile(fileName);
			
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);
			int month = c.get(Calendar.MONTH) + 1;
			int date = c.get(Calendar.DATE);
			String saveFolder = request.getSession().getServletContext().getRealPath("resources") + "/profile/";
			String homedir = saveFolder + year + "-" + month + "-" + date;
			System.out.println(homedir);
			File path1 = new File(homedir);
			
			if(!(path1.exists())) {
				path1.mkdir();
			}
			
			Random r = new Random();
			int random = r.nextInt(100000000);
			
			int index = fileName.lastIndexOf(".");
			System.out.println("파일이름 . 위치 = " + index);
			
			String fileExtension = fileName.substring(index+1);
			System.out.println("프로필 사진 확장자 = " + fileExtension);
			
			String refileName = "eeum" + year + month + date + random + "." + fileExtension;
			System.out.println("새로운 파일명 = " + refileName);
			
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			System.out.println("DB에 저장될 파일명 = " + fileDBName);
			
			uploadfile.transferTo(new File(saveFolder + fileDBName));
			
			user.setUser_saveprofile(fileDBName);
		} 
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String encPassword = passwordEncoder.encode(user.getUser_pass());
		String encJumin = passwordEncoder.encode(user.getUser_jumin2());
		
		System.out.println(encPassword);
		user.setUser_pass(encPassword);
		
		System.out.println(encJumin);
		user.setUser_jumin2(encJumin);
		
		int result = userservice.insert(user);
		out.println("<script>");
		
		if (result==1)  {
			out.println("alert('이음이 기다리고 있었습니다. 제대로 모시겠습니다.');");
			out.println("location.href='login.net';");
			
		} else if (result==-1) {
			out.println("alert('당신은 이음과 함께 하실 수 없습니다.');");
			out.println("history.back()");
		}
		
		out.println("</script>");
		out.close();
	}
	
	@ResponseBody
	@RequestMapping(value="user_idcheck.net", method=RequestMethod.GET)
	public int user_idcheck(String user_id) {
		int result = userservice.isId(user_id);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="user_nickcheck.net", method=RequestMethod.GET)
	public int user_nickcheck(String user_nick) {
		int result = userservice.isNick(user_nick);
		return result;
	}
	
	@RequestMapping(value="expertJoin.net", method=RequestMethod.GET)
	public String expert_join() {
		return "UE/expert_join";
	}
	
	@RequestMapping(value="expertJoinProcess.net", method=RequestMethod.POST)
	public void joinProcess(Expert expert, HttpServletResponse response, HttpServletRequest request) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String encPassword = passwordEncoder.encode(expert.getExpert_pass());
		String encJumin = passwordEncoder.encode(expert.getExpert_jumin2());
		
		System.out.println(encPassword);
		expert.setExpert_pass(encPassword);
		
		System.out.println(encJumin);
		expert.setExpert_jumin2(encJumin);
		
		int result = expertservice.insert(expert);
		out.println("<script>");
		
		if (result==1)  {
			out.println("alert('이음이 기다리고 있었습니다. 제대로 모시겠습니다.');");
			out.println("location.href='login.net';");
			
		} else if (result==-1) {
			out.println("alert('당신은 이음과 함께 하실 수 없습니다.');");
			out.println("history.back()");
		}
		
		out.println("</script>");
		out.close();
	}
	
	@ResponseBody
	@RequestMapping(value="expert_idcheck.net", method=RequestMethod.GET)
	public int expert_idcheck(String expert_id) {
		int result = expertservice.isId(expert_id);
		return result;
	}
	
	
	/* 로그인 */
	@RequestMapping(value="login.net", method=RequestMethod.GET)
	public ModelAndView login(ModelAndView mv,
													@CookieValue(value="saveid", required=false) Cookie readCookie)
													throws Exception {
		if(readCookie != null) {
			mv.addObject("saveid", readCookie.getValue());
			System.out.println("cookie time = " + readCookie.getMaxAge());
		}
		
		mv.setViewName("UE/login");
		return mv;
	}
	
	@RequestMapping(value="user_loginProcess.net", method=RequestMethod.POST)
	public String userLoginProcess(@RequestParam("user_id") String user_id,
														@RequestParam("user_pass") String user_pass,
														@RequestParam(value="user_remember", defaultValue="") String user_remember,
														HttpServletResponse response,
														HttpSession session) throws Exception {
		int result = userservice.isId(user_id, user_pass);
		System.out.println("로그인 결과 : " + result);
		
		if (result == 1) {
			session.setAttribute("user_id", user_id);
			Cookie savecookie = new Cookie("saveid", user_id);
			
			if( !user_remember.equals("")) {
				savecookie.setMaxAge(60*60);
				System.out.println("ID 기억하기 체크 O -> 쿠키 저장 O");
				
			} else {
				savecookie.setMaxAge(0);
				System.out.println("ID 기억하기 체크 X -> 쿠키 저장 X");
			}
			
			response.addCookie(savecookie);
			return "redirect:/";
			
		} else {
			String message = "비밀번호가 일치하지 않습니다.";	//result == 0
			
			if (result == -1) {
				message = "이음에 등록되지 않은 아이디입니다.";
			}
			
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('" + message + "');");
			out.println("location.href='login.net';");
			out.println("</script>");
			out.close();
			return null;
		}
	}
	
	/* 사용자 마이페이지 */
	@RequestMapping(value="userpage.net")
	public String userpage() {
		return "UE/userpage_main";
	}
	
	@RequestMapping(value="userUpdate.net", method=RequestMethod.GET)
	public ModelAndView userUpdate(HttpSession session, ModelAndView mv) throws Exception {
		String user_id = (String) session.getAttribute("user_id");
		User user = userservice.user_info(user_id);
		mv.setViewName("UE/userpage_info");
		mv.addObject("userinfo", user);
		return mv;
	}
	
	@RequestMapping(value="userUpdateProcess.net", method=RequestMethod.POST)
	public void userUpdateProcess(User u, HttpServletResponse response) throws Exception {
		
		String encPassword = passwordEncoder.encode(u.getUser_pass());
		
		System.out.println(encPassword);
		u.setUser_pass(encPassword);
	
		response.setContentType("text/html;charset=utf-8");
		int result = userservice.user_update(u);
				
		PrintWriter out = response.getWriter();
		out.println("<script>");
		
		if (result == 1) {
			out.println("alert('수정되었습니다.');");
			out.println("location.href='userpage.net';");
			
		} else {
			out.println("alert('회원 정보 수정에 실패했습니다.');");
			out.println("history.back();");
		}
		out.println("</script>");
		out.close();
	}
	
	@RequestMapping(value="userReservation.net")
	public String userReservation() {
		return "UE/userpage_reservation";
	}
	
	@RequestMapping(value="userReview.net")
	public String userReview() {
		return "UE/userpage_review";
	}
	
	@RequestMapping(value="userOneday.net")
	public String userOneday() {
		return "UE/userpage_oneday";
	}
	
	@RequestMapping(value="userWishlist.net")
	public String userWishlist() {
		return "UE/userpage_wishlist";
	}
}
