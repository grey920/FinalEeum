package com.kh.eeum.controller;

import java.io.File;
import java.io.PrintWriter;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.Report;
import com.kh.eeum.domain.Comment;
import com.kh.eeum.service.ReportService;
import com.kh.eeum.service.CommentService;

@Controller
public class ReportController {

	@Autowired
	private ReportService boardService;

	@Autowired
	private CommentService commentService;

	@GetMapping(value = "/Report.net")
	public ModelAndView boardList(

			@RequestParam(value = "page", defaultValue = "1", required = false) int page, ModelAndView mv,
			HttpSession session) {
		int limit = 10;
		int listcount = boardService.getListCount();
		int maxpage = (listcount + limit - 1) / limit;
		System.out.println("표시하는 최대 페이지 수 = " + maxpage);
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 - 1;
		
		if (endpage > maxpage)
			endpage = maxpage;

		List<Report> boardlist = boardService.getBoardList(page, limit);
		String user_id = (String) session.getAttribute("user_id");

		mv.setViewName("report/report_board_list");
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("listcount", listcount);
		mv.addObject("boardlist", boardlist);
		mv.addObject("limit", limit);
		mv.addObject("user_id", user_id);

		return mv;
	}

	// 글쓰기 페이지 이동
	@GetMapping(value = "/BoardWrite.bo")
	public String board_write(Report board) {
		return "report/report_write";
	}

	// 글쓰기 작성
	@PostMapping(value = "/BoardAddAction.bo")
	public String bbs_write_ok(Report board, HttpServletRequest request) throws Exception {
		boardService.insertClass(board);
		return "redirect:/Report.net";
	}

	@GetMapping(value = "/BoardDetailAction.bo")
	public ModelAndView Detail(int num, ModelAndView mv, HttpServletRequest request, HttpSession session) {
		Report board = boardService.getDetail(num);
		if (board == null) {
			mv.setViewName("error/error");
			mv.addObject("url", request.getRequestURL());
		} else {
			System.out.println("신고 상세 화면~~");
			int count = commentService.getListCount(num); 
			String user_id = (String) session.getAttribute("user_id");
			mv.setViewName("report/report_board_view");
			mv.addObject("count", count);
			mv.addObject("user_id", user_id);
			mv.addObject("boarddata", board);
		}
		return mv;
	}
	
	//수정
	//수정
		@GetMapping("/BoardModifyView.bo")
		public ModelAndView BoardModifyView(int num,ModelAndView mv, HttpServletRequest request) {
				Report boarddata = boardService.getDetail(num);

				mv.addObject("boarddata", boarddata);
				
		
				mv.setViewName("report/report_modify");
				return mv;
		}
		
		@PostMapping("BoardModifyAction.bo")
		public ModelAndView BoardModifyAction(Report board,
				String check, ModelAndView mv, HttpServletRequest request,
				HttpServletResponse response) throws Exception{
			
			System.out.println("수정 들어왔니");
			int report_index = board.getREPORT_INDEX() +1;
			
			boolean usercheck = boardService.isBoardWriter(report_index, board.getREPORT_WRITER());
			System.out.println("신고 번호"+report_index);
			
			

			if(usercheck == false) {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out =  response.getWriter();
				out.println("<script>");
				out.println("alert('아이디가 다릅니다.');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
				return null;
			}
		
				
			int result = boardService.boardModify(board);
			
			if(result == 0 ) {
				System.out.println("에러입니다.");
				
			}else {
				String url = "redirect:BoardDetailAction.bo?num="+  report_index;
				
				
				mv.setViewName(url);
			}
			return mv;

			
		}
		

	// 댓글
	@ResponseBody
	@PostMapping(value = "CommentList.bo")
	public List<Comment> CommentList(@RequestParam("board_num") int num,
			@RequestParam(value = "page", defaultValue = "1", required = false) int page) {
		System.out.println("댓글 숫자ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ" + num);
		List<Comment> list = commentService.getCommentList(num, page);
		return list;
	}

	@PostMapping(value = "CommentAdd.bo")
	public void CommentAdd(Comment co, HttpServletResponse response, @RequestParam(value = "board_num") int num)
			throws Exception {

		co.setNum(num);
		System.out.println("댓글 값========================================" + co.getNum());
		int ok = commentService.commentsInsert(co);
		response.getWriter().print(ok);
	}

	@PostMapping(value = "CommentDelete.bo")
	public void CommentDelete(int num, HttpServletResponse response) throws Exception {
		// int num �ڸ��� ���� Integer.parseInt(request.getParameter("num")); �� ���ش�.
		int result = commentService.commentsDelete(num);
		response.getWriter().print(result);
	}

	@PostMapping(value = "CommentUpdate.bo")
	public void CommentUpdate(Comment co, HttpServletResponse response) throws Exception {
		int ok = commentService.commentsUpdate(co);
		response.getWriter().print(ok);
	}

}
