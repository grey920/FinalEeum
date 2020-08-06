package com.kh.eeum.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.Apply;
import com.kh.eeum.domain.Oneday;
import com.kh.eeum.domain.User;
import com.kh.eeum.service.ApplyService;
import com.kh.eeum.service.OnedayService;
import com.kh.eeum.service.UserService;

@Controller
public class OnedayController {

	@Autowired
	private OnedayService onedayService;
	
	@Autowired
	private ApplyService applyService;
	
	@Autowired
	private UserService userservice;
	
	@RequestMapping(value="onedayPay.one")
	public ModelAndView onedayPay(ModelAndView mv, HttpSession session,int num) {
		String id = (String) session.getAttribute("user_id");
		Apply apply = applyService.isId(id, num);
		System.out.println(apply.getAP_PRICE());
		User user = userservice.user_info(id);
		mv.setViewName("UE/oneday_pay");
		mv.addObject("applyData", apply);
		mv.addObject("userinfo", user);
		System.out.println("컨트롤러입니다.");
		return mv;
	}
	
	@RequestMapping(value="/payments/complete")
	public String paySuccess(String id, int apIndex, String price)  {
		System.out.println("paySuccess들어왔니");
		Apply apply = applyService.isId(id, apIndex);
		int result = applyService.updateState(id,apIndex);	//1이면 상태 수정 완료
		System.out.println("APPLY_PROG 업데이트 완료");
		return "redirect:/userpage.net";
	}

	// 원데이 클래스 메인 (리스트보기)
	@RequestMapping(value = "/OnedayList.one")
	public ModelAndView OnedayList(@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			ModelAndView mv) {

		int limit = 8; // 한 화면에 출력할 레코드 갯수

		int listcount = onedayService.getListCount(); // 총 리스트 수(게시물의 갯수)를 받아옴

		// 총페이지 수
		int maxpage = (listcount + limit - 1) / limit;

		// 현재 페이지에 보여줄 시작 페이지 수 (1, 11, 21 등 ...)
		int startpage = ((page - 1) / 10) * 10 + 1;

		// 현재 페이지에 보여줄 마지막 페이지 수 (10, 20, 30 등 ...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		List<Oneday> onedaylist = onedayService.getBoardList(page, limit); // 리스트를 받아옴

		mv.setViewName("class_board/oneday_main");
		mv.addObject("page", page); // request.setAttribute 로 담았던걸 여기서 다 담음
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("onedaylist", onedaylist);
		mv.addObject("limit", limit);
		return mv;
	}
	
	

	@GetMapping(value = "/OnedayDetailAction.one")
	public ModelAndView OnedayDetail(int num, ModelAndView mv, HttpServletRequest request) {
		Oneday oneday = onedayService.getDetail(num);
		int classCount = applyService.getClassCount(num);//신청한 자릿수 (ONE_SEAT - ONE_ACTUAL_SEAT)
		System.out.println("classcount = "+ classCount);
		if(oneday == null) {
			System.out.println("상세보기 실패");
			mv.setViewName("error/error");
			mv.addObject("url", request.getRequestURL());
			mv.addObject("message","상세보기 실패입니다.");
		} else {
			System.out.println("상세보기 성공 ");
			mv.setViewName("class_board/oneday_detail");
			mv.addObject("onedaydata", oneday);
			mv.addObject("classCount", classCount);
		}
		return mv;
	}

	
	@RequestMapping(value="OnedayWrite.one")
	public String OnedayWrite() {
		return "class_board/oneday_write";
	}
	
	@PostMapping(value="OnedayAddAction.one")
	public String oneday_write_ok(Oneday oneday, HttpServletRequest request) throws Exception {
		MultipartFile uploadfile = oneday.getUploadfile();
		
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename(); // 원래 파일명 <==String getOriginalFilename() : 업로드한 파일의 이름을 구한다
			oneday.setORIGINALFILE(fileName); // 원래 파일명 저장
			
			// 새로운 폴더 이름 : 오늘 년-월-일  
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR); // 오늘 년도 구합니다.
			int month = c.get(Calendar.MONTH ) + 1; // 오늘 월 구합니다.
			int date = c.get(Calendar.DATE); // 오늘일  구합니다.
			String saveFolder = request.getSession().getServletContext().getRealPath("resources") + "/OBoardupload/";
			String homedir = saveFolder + year + "-" + month + "-" + date;
			System.out.println("homedir = "+homedir);
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
			
			//️transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다.
			uploadfile.transferTo(new File(saveFolder + fileDBName));
			
			//바뀐 파일명으로 저장 (최종 파일명)
			oneday.setSAVEFILE(fileDBName);
		}
		onedayService.insertClass(oneday);
		//onedayService.insertOneday(oneday);
		return "redirect:/OnedayList.one";
	}
	
	@PostMapping("/OnedayDeleteAction.one")
	public ModelAndView OnedayDeleteAction(int num, ModelAndView mv, HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		int result = onedayService.boardDelete(num);
		//삭제 처리 실패한 경우
				if(result == 0) {
					System.out.println("원데이 게시판 삭제 실패");
					mv.setViewName("error/error");
					mv.addObject("url", request.getRequestURL());
					mv.addObject("message", "게시판 삭제 실패입니다.");
				}
				//삭제 처리 성공한 경우 - 글 목록 보기요청을 전송하는 부분입니다.
				System.out.println("원데이 게시판 삭제 성공");
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('삭제되었습니다.');");
				out.println("location.href='OnedayList.one';");
				out.println("</script>");
				out.close();
				return null;
		
	}
	
	@ResponseBody
	@RequestMapping(value="/OnedayListAjax.one")
	public Map<String, Object> onedayListAjax(
			@RequestParam(value="page", defaultValue="1", required=false) int page,
			@RequestParam(value="limit", defaultValue="10", required=false) int limit){

		int listcount = onedayService.getListCount(); // 총 리스트 수(게시물의 갯수)를 받아옴

		// 총페이지 수
		int maxpage = (listcount + limit - 1) / limit;

		// 현재 페이지에 보여줄 시작 페이지 수 (1, 11, 21 등 ...)
		int startpage = ((page - 1) / 10) * 10 + 1;

		// 현재 페이지에 보여줄 마지막 페이지 수 (10, 20, 30 등 ...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		List<Oneday> onedaylist = onedayService.getBoardList(page, limit); // 리스트를 받아옴

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("page", page);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("listcount", listcount);
		map.put("onedaylist", onedaylist);
		map.put("limit", limit);
		
		return map;
	}
	
	@RequestMapping(value="OnedayApply.one")
	public  ModelAndView apply(@RequestParam("num") int num,Oneday oneday, Apply apply, ModelAndView mv, 
			HttpServletRequest request,HttpServletResponse response, HttpSession session) throws IOException {
		String id = (String)session.getAttribute("user_id");
		System.out.println("id, num="+id +num);
		
		Apply applyResult= applyService.isId(id, num);	
		if(applyResult != null) {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('이미 신청한 클래스입니다. 마이페이지를 확인하세요');");
			out.println("location.href='OnedayList.one';"); //마이페이지로 넘기기
			out.println("</script>");
			out.close();
			return null;
		} else {
			apply.setAP_ID(id);
			apply.setAP_CINDEX(num);
		}
			int result = applyService.insertApply(apply);
			System.out.println("들어왔니");
		
		if(result==1) {
		System.out.println("원데이 클래스 신청 성공");
//		int resultUpdate = onedayService.updateProg(num);
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('원데이 클래스 가신청 되었습니다. 입금이 완료되어야 신청됩니다.');");
		out.println("location.href='userOneday.net';"); //마이페이지로 넘기기
		out.println("</script>");
		out.close();
		return null;
	
		} 
		else {
			System.out.println("원데이 클래스 신청 실패 - OnedayApply.one");
			mv.setViewName("error/error");
			mv.addObject("url", request.getRequestURL());
			mv.addObject("message", "클래스 신청 실패입니다.");
			return mv;
		}
		
	}
	
	
	@GetMapping("/OnedayModifyView.one")
	public ModelAndView OnedayModifyView(int num, ModelAndView mv, HttpServletRequest request) {
		Oneday onedaydata = onedayService.getDetail(num);
		//글 내용 불러오기 실패한 경우입니다.
		if(onedaydata == null) {
			System.out.println("(수정) 상세보기 실패");
			mv.setViewName("error/error");
			mv.addObject("url", request.getRequestURL());
			mv.addObject("message", "(수정)상세보기 실패입니다.");
			return mv;
		}
		System.out.println("(수정)상세보기:OnedayModifyView 성공");
		
		// 수정 폼 페이지로 이동할 때 원문 글 내용을 보여주기 때문에 boarddata 객체를
		// ModelAndView 객체에 저장합니다.\
		mv.addObject("onedaydata", onedaydata);
		mv.setViewName("class_board/oneday_modify");
		return mv;
	}
	
	@PostMapping("OnedayModifyAction.one")
	public ModelAndView OnedayModifyAction(Oneday oneday,
				String check, ModelAndView mv, HttpServletRequest request,
				HttpServletResponse response) throws Exception{
		MultipartFile uploadfile = oneday.getUploadfile();
		System.out.println("check = " + check);
		if(check != null && !check.equals("")) { // 기존 파일 그대로 사용하는 경우입니다.
			System.out.println("기존 파일 그대로 사용합니다.");
			oneday.setORIGINALFILE(check);
			//<input type="hidden" name="BOARD_FILE" value="${boarddata.BOARD_FILE}">
			// 위 문장 때문에 board. setBOARD_FILE() 값은 자동 저장됩니다.
//			String fileDBName = fileDBName(check, saveFolder);
//			board.setBOARD_FILE(fileDBName);
		} else {
			if (uploadfile != null && !uploadfile.isEmpty()) { // 파일 변경한 경우
				String fileName = uploadfile.getOriginalFilename();  // 원래 파일 명
				oneday.setORIGINALFILE(fileName);
				
				String saveFolder = request.getSession().getServletContext().getRealPath("resources") + "/OBoardupload/";
				String fileDBName = fileDBName(fileName, saveFolder);
				
				// transferTo(File path) : 업로드한 파일을 매개변수의 경로에 저장합니다.
				uploadfile.transferTo(new File(saveFolder + fileDBName));
				
				// 바뀐 파일명으로 저장
				oneday.setSAVEFILE(fileDBName);
			} else { // uploadfile.isEmpty()인 경우 - 파일 선택하지 않은 경우
				System.out.println(" uploadfile.isEmpty() 선택 파일 없습니다.");
				//<input type="hidden" name="BOARD_FILE" value="${boarddata.BOARD_FILE}">
				// 위 태그에 값이 있다면 "" 로 변경합니다. 
				oneday.setSAVEFILE(""); //""로 초기화 합니다.
				oneday.setORIGINALFILE(""); //""로 초기화합니다.
			}
		}
		// DAO에서 수정 메서드 호출하여 수정합니다.
		int result = onedayService.onedayModify(oneday);
		
		// 수정에 실패한 경우
		if (result == 0) {
			System.out.println("게시판 수정 실패");
			mv.setViewName("error/error");
			mv.addObject("url", request.getRequestURL());
			mv.addObject("message", "게시판 수정 실패");
		} else { // 수정 성공의 경우
			System.out.println("게시판 수정 완료");
			String url = "redirect:OnedayDetailAction.one?num=" + oneday.getONE_INDEX();
			
			// 수정한 글 내용을 보여주기 위해 글 내용 보기 보기 페이지로 이동하기 위해 경로를 설정합니다.
			mv.setViewName(url);
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
					String refileName = "bbs" + year + month + date + random + "." + fileExtension;
					System.out.println("refileName = " + refileName);
					
					// 오라클 디비에 저장될 파일 명
					String fileDBName = "/" + year + "-" + month + "-" + date + "/" + refileName;
					System.out.println("fileDBName = "+ fileDBName);
					
		return fileDBName;
	}

}

