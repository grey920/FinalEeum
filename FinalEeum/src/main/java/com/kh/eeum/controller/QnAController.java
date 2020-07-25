package com.kh.eeum.controller;

import java.io.File;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.QnA;
import com.kh.eeum.domain.Comment;
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
			ModelAndView mv,HttpSession session) {
		int limit = 10;	
		
		int listcount = boardService.getListCount(); 
		

		int maxpage = (listcount + limit -1) / limit;	
		System.out.println("�� ������ �� = " + maxpage);
		
		
		int startpage = ((page - 1) / 10) * 10 + 1;
		
		
		int endpage = startpage + 10 - 1;
		
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		
		List<QnA> boardlist = boardService.getBoardList(page,limit);
		String user_id = (String) session.getAttribute("user_id");
		
		mv.setViewName("QnA_Board/qna_board_list");
		mv.addObject("page",page); 
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage",startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("boardlist", boardlist);
		mv.addObject("limit", limit);
		mv.addObject("user_id",user_id);
		
		return mv;
	}
	
	//글쓰기 페이지 이동
	@GetMapping(value = "/BoardWrite.bo")
	public String board_write(QnA board) {
		return "QnA_Board/qna_write";
	}
	
	
	
	//글쓰기 작성
	@PostMapping(value="/BoardAddAction.bo")
	public String bbs_write_ok(QnA board, HttpServletRequest request) throws Exception {
		
	
		boardService.insertClass(board);

		return "redirect:/QnA.net";
	}
	
	@GetMapping(value = "/BoardDetailAction.bo")
	public ModelAndView Detail(int num,ModelAndView mv,
			HttpServletRequest request,HttpSession session) {
		QnA board = boardService.getDetail(num);
		if(board == null) {
			mv.setViewName("error/error");
			mv.addObject("url" , request.getRequestURL());
		}else {
			System.out.println("�󼼺��� ����");
			int count = commentService.getListCount(num); // ����� � �ִ����� �ѷ��ֱ� ����  getListCount�� �߰� 
			String user_id =  (String) session.getAttribute("user_id");
			mv.setViewName("QnA_Board/qna_board_view");
			mv.addObject("count", count);
			mv.addObject("user_id",user_id);
			mv.addObject("boarddata",board);
		}
		return mv;
	}
	
	//댓글
	@ResponseBody
	@PostMapping(value = "CommentList.bo")
	public List<Comment> CommentList(@RequestParam("board_num") int num,
			@RequestParam(value = "page", defaultValue = "1",required = false) int page){
		System.out.println("댓글 숫자ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ"+num);
		List<Comment> list = commentService.getCommentList(num, page);
		return list;
	}
	
	@PostMapping(value = "CommentAdd.bo")
	public void CommentAdd(Comment co,HttpServletResponse response,@RequestParam(value = "board_num") int num) throws Exception{
		
		co.setNum(num);
		System.out.println("댓글 값========================================"+co.getNum());
		int ok = commentService.commentsInsert(co);
		response.getWriter().print(ok);
	}
	
	@PostMapping(value = "CommentDelete.bo")
	public void CommentDelete(int num,HttpServletResponse response) throws Exception{
		//int num �ڸ��� ���� Integer.parseInt(request.getParameter("num")); �� ���ش�.
		int result = commentService.commentsDelete(num);
		
		
		response.getWriter().print(result);
	}
	
	@PostMapping(value = "CommentUpdate.bo")
	public void CommentUpdate(Comment co,HttpServletResponse response) throws Exception{
		int ok = commentService.commentsUpdate(co);
		response.getWriter().print(ok);
	}
	

}
