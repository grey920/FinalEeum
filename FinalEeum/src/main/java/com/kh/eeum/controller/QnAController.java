package com.kh.eeum.controller;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.Board;
import com.kh.eeum.domain.Oneday;
import com.kh.eeum.service.BoardService;
import com.kh.eeum.service.CommentService;



@Controller
public class QnAController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired 
	private CommentService commentService;
	
	@GetMapping(value = "/QnA.net")
	public ModelAndView boardList(
			
			@RequestParam(value = "page",defaultValue = "1",required = false) int page,
			ModelAndView mv) {
		int limit = 10;	
		
		int listcount = boardService.getListCount(); 
		

		int maxpage = (listcount + limit -1) / limit;	
		System.out.println("�� ������ �� = " + maxpage);
		
		
		int startpage = ((page - 1) / 10) * 10 + 1;
		
		
		int endpage = startpage + 10 - 1;
		
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		List<Board> boardlist = boardService.getBoardList(page,limit);
		
		mv.setViewName("QnA_Board/qna_board_list");
		mv.addObject("page",page); 
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage",startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("boardlist", boardlist);
		mv.addObject("limit", limit);
		return mv;
	}
	
	//글쓰기 페이지 이동
	@GetMapping(value = "/BoardWrite.bo")
	public String board_write(Board board) {
		return "QnA_Board/oneday_write";
	}
	
	//글쓰기 작성
	@PostMapping(value="/BoardAddAction.bo")
	public String bbs_write_ok(Board board, HttpServletRequest request) throws Exception {
		MultipartFile uploadfile = board.getUploadfile();
		
		if(!uploadfile.isEmpty()) {
			String fileName = uploadfile.getOriginalFilename(); // 원래 파일명 <==String getOriginalFilename() : 업로드한 파일의 이름을 구한다
			board.setQNA_ORIGINALFILE(fileName); // 원래 파일명 저장
			
			// 새로운 폴더 이름 : 오늘 년-월-일  
			Calendar c = Calendar.getInstance();
			int year = c.get(Calendar.YEAR); // 오늘 년도 구합니다.
			int month = c.get(Calendar.MONTH ) + 1; // 오늘 월 구합니다.
			int date = c.get(Calendar.DATE); // 오늘일  구합니다.
			String saveFolder = request.getSession().getServletContext().getRealPath("resources") + "/QnAupload/";
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
			board.setQNA_SAVEFILE(fileDBName);
		}
		boardService.insertClass(board);
		//onedayService.insertOneday(oneday);
		return "redirect:/QnA.net";
	}
	
	

}
