package com.kh.eeum.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

import com.kh.eeum.domain.Oneday;
import com.kh.eeum.service.OnedayService;

@Controller
public class OnedayController {

	@Autowired
	private OnedayService onedayService;
	
	@Value("${savefoldername}")
	private String saveFolder;

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
		if(oneday == null) {
			System.out.println("상세보기 실패");
			mv.setViewName("error/error");
			mv.addObject("url", request.getRequestURL());
			mv.addObject("message","상세보기 실패입니다.");
		} else {
			System.out.println("상세보기 성공");
			mv.setViewName("class_board/oneday_detail");
			mv.addObject("onedaydata", oneday);
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
			String refileName = "bbs" + year + month + date + random + "." + fileExtension;
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
	
}

