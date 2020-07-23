package com.kh.eeum.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
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

import com.kh.eeum.domain.Apply;
import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Oneday;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Reservation;
import com.kh.eeum.domain.User;
import com.kh.eeum.service.ApplyService;
import com.kh.eeum.service.ExpertService;
import com.kh.eeum.service.LikeService;
import com.kh.eeum.service.UserService;

@Controller
public class UEController {
	
	@Autowired
	private UserService userservice;
	
	@Autowired
	private ExpertService expertservice;
	
	@Autowired
	private ApplyService applyservice;
	
	@Autowired
	private LikeService likeservice;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	
	@RequestMapping(value="/main")
	public String main() {
		return "main";
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
	@RequestMapping(value="user_jumincheck.net", method=RequestMethod.GET)
	public int user_jumincheck(String user_jumin1, String user_jumin2) {
		int result = userservice.isJumin(user_jumin1, user_jumin2);
		return result;
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
	
	@RequestMapping(value="user_loginProcess.net", method=RequestMethod.POST)
	public String expertLoginProcess(@RequestParam("user_id") String user_id,
														@RequestParam("user_pass") String user_pass,
														@RequestParam(value="user_remember", defaultValue="") String user_remember,
														HttpServletResponse response,
														HttpSession session) throws Exception {
		int result = userservice.isId(user_id, user_pass);
		System.out.println("로그인 결과 : " + result);
		
		if (result == 1) {
			session.setAttribute("user_id", user_id);
			
			String user_nick = userservice.getNick(user_id);
			session.setAttribute("user_nick", user_nick);
			
			String user_saveprofile = userservice.getProfile(user_id);
			session.setAttribute("user_saveprofile", user_saveprofile);
			
			Cookie savecookie = new Cookie("saveid", user_id);
			
			if( !user_remember.equals("")) {
				savecookie.setMaxAge(60*60);
				System.out.println("ID 기억하기 체크 O -> 쿠키 저장 O");
				
			} else {
				savecookie.setMaxAge(0);
				System.out.println("ID 기억하기 체크 X -> 쿠키 저장 X");
			}
			
			response.addCookie(savecookie);
			return "redirect:/main";
			
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
	
	
	/* 전문가 마이페이지 */
	@RequestMapping(value="expertpage.net")
	public String expertuserpage() {
		return "UE/expertpage_main";
	}
	
	@RequestMapping(value="expertUpdate.net")
	public ModelAndView expertUpdate(HttpSession session, ModelAndView mv) {
		String expert_id = (String) session.getAttribute("expert_id");
		Expert expert = expertservice.expert_info(expert_id);
		mv.setViewName("UE/expertpage_info");
		mv.addObject("expertinfo", expert);
		return mv;
	
	}
	
	@RequestMapping("viewPortfolio")
	public ModelAndView viewPortfolio(ModelAndView mv, HttpSession session) {
		String expert_id = (String)session.getAttribute("expert_id");
		Portfolio portfolio = expertservice.getPortfolio(expert_id);
		
		if (portfolio != null) {
		String[] LOC = portfolio.getPF_LOC().split(",");
		String sido = LOC[0]; String gugun = LOC[1];
		System.out.println("sido="+sido+", gugun="+gugun);
		
		String[] TIME = portfolio.getPF_TIME().split(",");
		String shour = TIME[0]; String ehour = TIME[1];
		System.out.println("shour="+shour+", ehour="+ehour);
		
		mv.setViewName("portfolio/portfolio");
		mv.addObject("PFdata", portfolio);
		mv.addObject("sido", sido);
		mv.addObject("gugun", gugun);
		mv.addObject("starthour", shour);
		mv.addObject("endhour", ehour);
		return mv;
		}
		else {
		mv.setViewName("portfolio/portfolio");
		mv.addObject("PFdata", portfolio);
		return mv;
		}
	}
	
	@RequestMapping("deletePF")
	public void deletePF(HttpSession session, HttpServletResponse response) throws IOException {
		String expert_id = (String) session.getAttribute("expert_id");
		int result = expertservice.deletePF(expert_id);
		
		if(result == 1) {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter	out = response.getWriter();
		out.println("<script>");
		out.println("alert('정상적으로 포트폴리오가 삭제되었습니다');");
		out.println("location.href='expertpage.net';");
		out.println("</script>");
		out.close();
		}
	}

	@RequestMapping("writePortfolio")
	public String writePortfolio() {
		return "portfolio/writePortfolio";
	}
	
	@RequestMapping("writeActionPofo")
	public void writeActionPofo(Portfolio pf, HttpServletResponse response, 
								HttpServletRequest request, HttpSession session,
								@RequestParam("sido1")String sido,@RequestParam("gugun1")String gugun,
								@RequestParam("starthour")String starthour, @RequestParam("endhour")String endhour) throws Exception {
		
		
		MultipartFile uploadfilePRO = pf.getUploadfilePRO();
		
		if (!uploadfilePRO.isEmpty()) {
			String fileName = uploadfilePRO.getOriginalFilename();
			pf.setPF_PROFILE(fileName);
			
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR);
			int month = c.get(Calendar.MONTH) + 1;
			int date = c.get(Calendar.DATE);
			String saveFolder = request.getSession().getServletContext().getRealPath("resources") + "/expert_profile/";
			String homedir = saveFolder + year + "-" + month + "-" + date;
			System.out.println(homedir);
			File path = new File(homedir);
			
			if(!(path.exists())) {
				path.mkdir();
			}
			
			Random r = new Random();
			int random = r.nextInt(100000000);
			
			int index = fileName.lastIndexOf(".");
			System.out.println("파일이름 . 위치 = " + index);
			
			String fileExtension = fileName.substring(index+1);
			System.out.println("전문가 프로필 사진 확장자 = " + fileExtension);
			
			String refileName = "eeum" + year + month + date + random + "." + fileExtension;
			System.out.println("새로운 파일명 = " + refileName);
			
			String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
			System.out.println("DB에 저장될 파일명 = " + fileDBName);
			
			uploadfilePRO.transferTo(new File(saveFolder + fileDBName));
			
			pf.setPF_SAVEPROFILE(fileDBName);
		} 
		
		
		MultipartFile uploadfile1 = pf.getUploadfile1();
	
		if(!uploadfile1.isEmpty()) {
			String fileName1 = uploadfile1.getOriginalFilename(); // 원래 파일명 <==String getOriginalFilename() : 업로드한 파일의 이름을 구한다
			pf.setPF_OR_OP(fileName1); // 원래 파일명 저장
			
			// 새로운 폴더 이름 : 오늘 년-월-일  
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR); // 오늘 년도 구합니다.
			int month = c.get(Calendar.MONTH ) + 1; // 오늘 월 구합니다.
			int date = c.get(Calendar.DATE); // 오늘일  구합니다.
			String saveFolder1 = request.getSession().getServletContext().getRealPath("resources") + "/pf_OP_upload/";
			String homedir1 = saveFolder1 + year + "-" + month + "-" + date;
			System.out.println("homedir = "+homedir1);
			File path1 = new File(homedir1);
			if(!(path1.exists())) {
				path1.mkdir();  // 새로운 폴더를 생성
			}
		

			Random r = new Random();
			int random = r.nextInt(100000000);
			
			int index = fileName1.lastIndexOf(".");
			System.out.println("파일이름 . 위치 = " + index);
			
			String fileExtension = fileName1.substring(index+1);
			System.out.println("프로필 사진 확장자 = " + fileExtension);
			
			String refileName1 = "eeum" + year + month + date + random + "." + fileExtension;
			System.out.println("새로운 파일명 = " + refileName1);
			
			String fileDBName1 = "/" + year + "-" + month + "-" + date + "/" + refileName1;
			System.out.println("DB에 저장될 파일명 = " + fileDBName1);
			
			uploadfile1.transferTo(new File(saveFolder1 + fileDBName1));
			
			pf.setPF_SV_OP(fileDBName1);
		}
		
		
		MultipartFile uploadfile2 = pf.getUploadfile2();
		if(!uploadfile2.isEmpty()) {
			String fileName2 = uploadfile2.getOriginalFilename(); // 원래 파일명 <==String getOriginalFilename() : 업로드한 파일의 이름을 구한다
			pf.setPF_OR_LI(fileName2); // 원래 파일명 저장
			
			// 새로운 폴더 이름 : 오늘 년-월-일  
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR); // 오늘 년도 구합니다.
			int month = c.get(Calendar.MONTH ) + 1; // 오늘 월 구합니다.
			int date = c.get(Calendar.DATE); // 오늘일  구합니다.
			String saveFolder2 = request.getSession().getServletContext().getRealPath("resources") + "/pf_LI_upload/";
			String homedir2 = saveFolder2 + year + "-" + month + "-" + date;
			System.out.println("homedir2 = "+homedir2);
			File path2 = new File(homedir2);
			if(!(path2.exists())) {
				path2.mkdir();  // 새로운 폴더를 생성
			}
		

			Random r = new Random();
			int random = r.nextInt(100000000);
			
			int index = fileName2.lastIndexOf(".");
			System.out.println("파일이름 . 위치 = " + index);
			
			String fileExtension = fileName2.substring(index+1);
			System.out.println("자격증 사진 확장자 = " + fileExtension);
			
			String refileName2 = "eeum" + year + month + date + random + "." + fileExtension;
			System.out.println("새로운 파일명 = " + refileName2);
			
			String fileDBName2 = "/" + year + "-" + month + "-" + date + "/" + refileName2;
			System.out.println("DB에 저장될 파일명 = " + fileDBName2);
			
			uploadfile2.transferTo(new File(saveFolder2 + fileDBName2));
			
			pf.setPF_SV_LI(fileDBName2);
		}
		
			
			//활동지역 따로 처리하자! sido1 / gugun1
			String loc = sido +","+ gugun;
			pf.setPF_LOC(loc);
			//에약 가능 시간도 따로 처리하자 starthour/endhour
			String time = starthour +","+ endhour;
			pf.setPF_TIME(time);
			
			//아이디 매핑
			String expert_id = (String) session.getAttribute("expert_id");
			pf.setPF_EXID(expert_id);
			System.out.println("expert_id 뭐야" + expert_id);
			int result = expertservice.insert(pf);
			
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			if(result == 1) {
				out.println("alert('포트폴리오가 정상적으로 등록되었습니다.');");
				out.println("location.href='expertpage.net';");
			}else {
				out.println("alert('포트폴리오가 정상적으로 등록되지 않았습니다.');");
				out.println("location.href='expertpage.net';");
			}
			out.println("</script>");
			out.close();
		
	}
	
	@RequestMapping("modifyPFview")
	public ModelAndView modifyPFview(HttpSession session, HttpServletRequest request,ModelAndView mv) {
		String exid = (String) session.getAttribute("expert_id");
		Portfolio pf1 = expertservice.getPortfolio(exid);
		if(pf1 == null) {
			System.out.println("포폴 수정 상세보기 실패");
			mv.setViewName("error/error");
			mv.addObject("url", request.getRequestURL());
			mv.addObject("message", "(수정)상세보기 실패입니다.");
		}
		System.out.println("포폴 수정 상세보기 성공");
		
			String[] LOC = pf1.getPF_LOC().split(",");
			String sido = LOC[0]; String gugun = LOC[1];
			System.out.println("sido="+sido+" gugun="+gugun);
			
			String[] TIME = pf1.getPF_TIME().split(",");
			String shour = TIME[0]; String ehour = TIME[1];
			System.out.println("shour="+shour+" ehour="+ehour);
			
			mv.setViewName("portfolio/portfolio");
			mv.addObject("PFdata", pf1);
			mv.addObject("sido", sido);
			mv.addObject("gugun", gugun);
			mv.addObject("starthour", shour);
			mv.addObject("endhour", ehour);
			
			mv.setViewName("portfolio/modifyPortfolio");
		return mv;
	}
	
	@RequestMapping("modifyActionPofo")
	public ModelAndView modifyActionPofo(ModelAndView mv, Portfolio pf, String check, String check1, String check2, HttpServletRequest request,
			@RequestParam("sido1")String sido,@RequestParam("gugun1")String gugun,
			@RequestParam("starthour")String starthour, @RequestParam("endhour")String endhour, HttpSession session) throws IllegalStateException, IOException {
	
		MultipartFile uploadfilePRO = pf.getUploadfilePRO();
		MultipartFile uploadfile1 = pf.getUploadfile1();
		MultipartFile uploadfile2 = pf.getUploadfile2();
		
		if(check != null && !check.equals("")) {
			System.out.println("기존의 프로필을 사용합니다.");
			System.out.println("check="+check);
			pf.setPF_PROFILE(check);
		}else {
			if(uploadfilePRO != null && !uploadfilePRO.isEmpty()) {
				String fileName = uploadfilePRO.getOriginalFilename();
				pf.setPF_PROFILE(fileName);
				
				String saveFolder = request.getSession().getServletContext().getRealPath("resources") + "/expert_profile/";
				String fileDBName = fileDBName(fileName, saveFolder);
				
				uploadfilePRO.transferTo(new File(saveFolder + fileDBName));
				pf.setPF_SAVEPROFILE(fileDBName);
			}else {
				System.out.println("uploadfile1.isEmpty() 선택 파일 없습니다.");
//				pf.setPF_SAVEPROFILE("");
//				pf.setPF_PROFILE("");
			}
		}
		
		//uploadfile1
		if(check1 != null && !check1.equals("")) {
			System.out.println("기존의 사업자등록증을 사용합니다.");
			System.out.println("check1="+check1);
			pf.setPF_OR_OP(check1);
		}else {
			if(uploadfile1 != null && !uploadfile1.isEmpty()) {
				String fileName1 = uploadfile1.getOriginalFilename();
				pf.setPF_OR_OP(fileName1);
				
				String saveFolder1 = request.getSession().getServletContext().getRealPath("resources") + "/pf_OP_upload/";
				String fileDBName1 = fileDBName(fileName1, saveFolder1);
				
				uploadfile1.transferTo(new File(saveFolder1 + fileDBName1));
				pf.setPF_SV_OP(fileDBName1);
			}else {
				System.out.println("uploadfile1.isEmpty() 선택 파일 없습니다.");
				pf.setPF_SV_OP("");
				pf.setPF_OR_OP("");
			}
		}
		
		//uploadfile2
		if(check2 != null && !check2.equals("")) {
			System.out.println("기존의 자격증을 사용합니다.");
			System.out.println("check2="+check2);
			pf.setPF_OR_LI(check2);
		}else {
			if(uploadfile2 != null && !uploadfile2.isEmpty()) {
				String fileName2 = uploadfile2.getOriginalFilename();
				pf.setPF_OR_OP(fileName2);
				
				String saveFolder2 = request.getSession().getServletContext().getRealPath("resources") + "/pf_LI_upload/";
				String fileDBName2 = fileDBName(fileName2, saveFolder2);
				
				uploadfile2.transferTo(new File(saveFolder2 + fileDBName2));
				pf.setPF_SV_LI(fileDBName2);
			}else {
				System.out.println("uploadfile2.isEmpty() 선택 파일 없습니다.");
				pf.setPF_SV_LI("");
				pf.setPF_OR_LI("");
			}
		}
		//활동지역 따로 처리하자! sido1 / gugun1
		String loc = sido +","+ gugun;
		pf.setPF_LOC(loc);
		//에약 가능 시간도 따로 처리하자 starthour/endhour
		String time = starthour +","+ endhour;
		pf.setPF_TIME(time);
		
		//아이디 매핑
		String expert_id = (String) session.getAttribute("expert_id");
		pf.setPF_EXID(expert_id);
		System.out.println("expert_id 뭐야" + expert_id);
		
		int result = expertservice.modifyPF(pf);
		
		if(result == 0) {
			System.out.println("포폴 수정 실패");
			mv.setViewName("error/error");
			mv.addObject("url", request.getRequestURL());
			mv.addObject("message", "포트폴리오 수정 실패");
		} else {
			System.out.println("포폴 수정 성공");
			mv.setViewName("UE/expertpage_main");
		}
		
		return mv;
		
	}
	
	private String fileDBName(String fileName, String saveFolder) {
		// 새로운 폴더 이름 : 오늘 년-월-일  
					Calendar c = Calendar.getInstance();
					int year = c.get(Calendar.YEAR); // 오늘 년도 구합니다.
					int month = c.get(Calendar.MONTH ) + 1; // 오늘 월 구합니다.
					int date = c.get(Calendar.DATE); // 오늘일  구합니다.
					
					String homedir = saveFolder + year + "-" + month + "-" + date;
					System.out.println(homedir);
					File path1 = new File(homedir);
					if(!(path1.exists())) {
						path1.mkdir();  // 새로운 폴더를 생성
					}
					
					// 난수를 구합니다.  <== 파일명 중복 없애기 위해
					Random r = new Random();
					int random = r.nextInt(100000000);
					
					/*****   확장자  구하기  시작   ****/
					int index = fileName.lastIndexOf(".");
					/*
					 문자열에서 특정 문자열의 위치 값(index)를 반환한다.
					 indexOf가 처음 발견되는 문자열에 대한 index를 반환하는반면, 
					 lastIndexOf는 마지막으로 발견되는 문자열의 index를 반환합니다.
					 (파일명에 점이 여러개 있을 경우 맨 마지막에 발견되는 문자열의 위치를 리턴합니다.)
					  */
					System.out.println("index = " + index);
					
					String fileExtension = fileName.substring(index + 1);
					System.out.println("fileExtension = "+ fileExtension);
					/*****   확장자  구하기  끝   ****/
					
					// 새로운 파일명
					String refileName = "eeum" + year + month + date + random + "." + fileExtension;
					System.out.println("refileName = " + refileName);
					
					// 오라클 디비에 저장될 파일 명
					String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
					System.out.println("fileDBName = "+ fileDBName);
					
		return fileDBName;
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
	
	@RequestMapping(value="expert_loginProcess.net", method=RequestMethod.POST)
	public String userLoginProcess(@RequestParam("expert_id") String expert_id,
														@RequestParam("expert_pass") String expert_pass,
														@RequestParam(value="expert_remember", defaultValue="") String expert_remember,
														HttpServletResponse response,
														HttpSession session) throws Exception {
		int result = expertservice.isId(expert_id, expert_pass);
		System.out.println("로그인 결과 : " + result);
		
		if (result == 1) {

			session.setAttribute("expert_id", expert_id);
			Cookie savecookie = new Cookie("saveid", expert_id);

			
			if( !expert_remember.equals("")) {
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
	public void userUpdateProcess(@RequestParam("user_id") String user_id, User u, String checkprofile,
														HttpServletRequest request,HttpServletResponse response, HttpSession session) 
														throws Exception {
		MultipartFile uploadfile = u.getUploadfile();
		System.out.println(checkprofile);
		
		if(checkprofile != null && !checkprofile.equals("")) {		//기존 프로필을 그대로 유지한 경우 
			u.setUser_profile(checkprofile);
			
		} else {
			if(uploadfile != null && !uploadfile.isEmpty()) {
				String fileName = uploadfile.getOriginalFilename();
				u.setUser_profile(fileName);
				
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
				
				u.setUser_saveprofile(fileDBName);
				
			} else {
				u.setUser_saveprofile("");
				u.setUser_profile("");
			}
		}
		
		String encPassword = passwordEncoder.encode(u.getUser_pass());
		
		System.out.println(encPassword);
		u.setUser_pass(encPassword);
	
		response.setContentType("text/html;charset=utf-8");
		int result = userservice.user_update(u);
				
		PrintWriter out = response.getWriter();
		out.println("<script>");
		
		if (result == 1) {
			String user_nick = userservice.getNick(user_id);
			session.setAttribute("user_nick", user_nick);
			
			String user_saveprofile = userservice.getProfile(user_id);
			session.setAttribute("user_saveprofile", user_saveprofile);
			
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
	public ModelAndView userReservation(@RequestParam(value="page", defaultValue="1", required=false) int page,
																	HttpSession session, ModelAndView mv) throws Exception {
		String user_id = (String) session.getAttribute("user_id");
		
		int reserveCount = expertservice.reserveCount(user_id);
		
		int limit = 10;
		int maxpage = (reserveCount + limit -1) / limit;
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 -1;
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		List<Reservation> reserveList =  expertservice.reserveList(user_id, page, limit);
		
		mv.setViewName("UE/userpage_reservation");
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("reserveCount", reserveCount);
		mv.addObject("rlist", reserveList);
		mv.addObject("limit", limit);
		
		return mv;
	}
	
	@RequestMapping(value="userRsCancel.net")
	public void userReservationCancel(String rs_exid, String user_id, String rs_date, HttpServletResponse response) throws Exception {
		System.out.println(user_id + "," + rs_exid + "," + rs_date);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		
		int result = expertservice.cancelReserve(rs_exid, user_id, rs_date);
		System.out.println(result);
		
		if (result == 1) {
			out.println("alert('예약하신 서비스가 취소되었습니다.');");		//추후에 모달로 바꾸기,,,
			out.println("location.href='userReservation.net';");
			
		} else {
			out.println("alert('예약 취소 실패했습니다.');");
			out.println("history.back();");
		}
		
		out.println("</script>");
		out.close();
	}
	
	@RequestMapping(value="userReview.net")
	public String userReview() {
		return "UE/userpage_review";
	}
	

	@RequestMapping(value="userOneday.net")
	public ModelAndView userOneday(@RequestParam(value="page", defaultValue="1", required=false) int page,
															HttpSession session, ModelAndView mv) throws Exception {

		String user_id = (String) session.getAttribute("user_id");
		
		int applyCount = applyservice.applyCount(user_id);
		
		int limit = 10;
		int maxpage = (applyCount + limit -1) / limit;
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 -1;
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		
		List<Apply> applyList = applyservice.applyList(user_id, page, limit);
		
		mv.setViewName("UE/userpage_oneday");
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("applycount", applyCount);
		mv.addObject("applylist", applyList);
		mv.addObject("limit", limit);
		
		return mv;
	}

	
	@RequestMapping(value="userOnedayCancel.net")
	public void onedayCancel(String ap_id, String ap_cindex, HttpServletResponse response) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		
		int result = applyservice.cancel(ap_id, ap_cindex);
		
		if (result == 1) {
			out.println("alert('신청하신 클래스가 취소되었습니다.');");		//추후에 모달로 바꾸기,,,
			out.println("location.href='userOneday.net';");
			
		} else {
			out.println("alert('클래스 취소가 실패되었습니다.');");
			out.println("history.back();");
		}
		
		out.println("</script>");
		out.close();
	}

	@RequestMapping(value="userWishlist.net")
	public ModelAndView userWishlist(@RequestParam(value="page", defaultValue="1", required=false) int page,
															HttpSession session, ModelAndView mv) {
		
		String user_id = (String) session.getAttribute("user_id");
		
		int wishlistCount = likeservice.wishlistCount(user_id);
		
		int limit = 12;
		int maxpage = (wishlistCount + limit -1) / limit;
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 -1;
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		List<Object> wishlist = likeservice.wishlist(user_id, page, limit);
		System.out.println(wishlist);
		
		mv.setViewName("UE/userpage_wishlist");
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("wishlistCount", wishlistCount);
		mv.addObject("wishlist", wishlist);
		mv.addObject("limit", limit);
		
		return mv;
	}
	
	@RequestMapping(value="userWishCheck.net", method=RequestMethod.GET)
	public ModelAndView userWishCheck (@RequestParam(value="value") int cate, 
																   @RequestParam(value="page", defaultValue="1", required=false) int page,
																   HttpSession session,ModelAndView mv) throws Exception {
		String user_id = (String) session.getAttribute("user_id");
		
		int wishCheckCount = likeservice.wishCheckCount(user_id, cate);
		
		int limit = 12;
		int maxpage = (wishCheckCount + limit -1) / limit;
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 -1;
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		List<Object> wishCheck = likeservice.wishCheck(user_id, cate, page, limit);
		System.out.println(wishCheck);
		
		mv.setViewName("UE/userpage_wishlist2");
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("wishCheckCount", wishCheckCount);
		mv.addObject("wishCheck", wishCheck);
		mv.addObject("limit", limit);
		
		return mv;
	}
	
	@RequestMapping(value="userDelete.net", method=RequestMethod.GET)
	public String delete(String user_id) throws Exception {
		applyservice.deleteAll(user_id);			//원데이 클래스 신청 내역 삭제 후 
		userservice.user_delete(user_id);			//회원 탈퇴 
		return "redirect:/";
	}
	
	@RequestMapping(value="userChat.net", method=RequestMethod.GET)
	public String chat() {
		return "UE/userpage_base";
	}
	
	@RequestMapping(value="FAQ.net")
	public String faq() {
		return "UE/FAQ";
	}
	
	//로그아웃
	@RequestMapping(value="logout.net", method=RequestMethod.GET)
	public void loginout(HttpSession session, HttpServletResponse response) throws Exception {
		session.invalidate();
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('로그아웃이 되었습니다. 내일 또 봬요 🥰');");
		out.println("location.href='main';");
		out.println("</script>");
		out.close();
		
	}
}
