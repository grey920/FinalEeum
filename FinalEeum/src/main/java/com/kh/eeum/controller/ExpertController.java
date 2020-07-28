package com.kh.eeum.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Like;
import com.kh.eeum.domain.Portfolio;
import com.kh.eeum.domain.Qna;
import com.kh.eeum.domain.Reservation;
import com.kh.eeum.domain.Review;
import com.kh.eeum.service.CleaningService;
import com.kh.eeum.service.ExpertRepairService;
import com.kh.eeum.service.ExpertService;
import com.kh.eeum.service.ExpertServiceImpl;
import com.kh.eeum.service.InsectService;
import com.kh.eeum.service.LikeService;
import com.kh.eeum.service.QnaService;
import com.kh.eeum.service.ReviewService;

import oracle.net.aso.i;

@Controller
public class ExpertController {

	@Autowired
	ExpertService expertservice;

	@Autowired
	LikeService likeservice; // 찜등록

	@Autowired
	ReviewService reviewservice; // 후기

	@Autowired
	ExpertRepairService repairService; // 수리

	@Autowired
	CleaningService cleaningService; // 청소

	@Autowired
	InsectService insectService; // 해충
	
	@Autowired
	QnaService qnaService; //qna
	
	private static final Logger logger = LoggerFactory.getLogger(ExpertServiceImpl.class);


	@RequestMapping(value="no_id.service")
	public void noid(HttpServletResponse response) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();		
		out.println("<script>");
		out.println("alert('비회원은 이음 사이트를 이용하실 수 없습니다.😢\\n로그인 또는 회원가입 후 이용해주세요.');");
		out.println("history.back()");
		out.println("</script>");
		out.close();
	}
	
	// 전문가 리스트
	@GetMapping("/expert.service")
	public ModelAndView service_list(HttpServletResponse response,
			// @RequestParam으로 page의 파라미터 값을 int page 에 담는다. 게시물이 없을 수도 있느니 defaultValue = 1
			// 로 예외처리를 해준다.
			ModelAndView mv, @RequestParam(value = "page", defaultValue = "1", required = false) int page)
			throws Exception {
		// 한 페이지에 보여줄 개수
		int limit = 9;

		
		System.out.println("전문가리스트 페이지이잉" + page);

		// 전문가 리스트 개수 가져옴.
		int listcount = expertservice.getExpertListCount();
		System.out.println("전문가 리스트 수(listcount) : " + listcount);

		// 총 페이지수
		int maxpage = (listcount + limit - 1) / limit;
		// 현재 전문가 수 가 9명이니
		// ( 9 + 8 - 1 ) / 8 = 2;
		System.out.println("총 페이지수(maxpage): " + maxpage);

		
		// 현재 페이지에 보여줄 시작 페이지수
		
		int startpage = ((page - 1) / 9) * 9 + 1;
		// ((1-1) / 8 ) * 8 + 1 = 1;
		System.out.println("현재 페이지에서 보여줄 시작페이지 수(startpage) : " + startpage);

		// 현재 페이지에서 보여줄 마지막 수
		int endpage = startpage + 9 - 1;
		// endpage = 1 + 8 - 1 = 8;
		System.out.println("현재 페이지에서 보여줄 마지막 페이지 수(endpage) : " + endpage);

		if (endpage > maxpage) // 만약 maxpage 보다 endpage가 더 크다면
			endpage = maxpage; // endpage 에는

		// expert 형인
		List<Expert> expertlist = expertservice.expertlist(page, limit);

		System.out.println("전문가 리스트" + expertlist);

		
		mv.setViewName("service/expert_list");
		mv.addObject("page", page);
		mv.addObject("limit", limit);
		mv.addObject("listcount", listcount);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		// 전문가 리스트
		mv.addObject("expertlist", expertlist);

		return mv;
	}

	// 전문가 상세 페이지
	// 여기서 견적 요청이 이루어짐.
	@GetMapping("/expertDetail.service")
	public ModelAndView service_details(ModelAndView mv,
			@RequestParam(value = "expert", required = false) String expertid, HttpServletResponse response,
			@RequestParam(value = "user_id", required = false) String user_id1, HttpSession session,
			@RequestParam(value = "page", required = false) Integer page) throws Exception {

		System.out.println("넘어온값 : " + expertid);

		String user_id = (String) session.getAttribute("user_id");
		String expert_id_login = (String) session.getAttribute("expert_id");

		System.out.println("로그인로그인 전문가존문가" + expert_id_login);
		// 찜등록 데이터 있는지 조회
		int result = likeservice.selectLike(expertid, user_id);
		int count = reviewservice.getReviewCount(expertid);
		// 예약 건수
		int requestCount = expertservice.getRequestCount(expertid);

		System.out.println("찜등록 아이디 :" + expertid + user_id);
		System.out.println("찜등록 데이터+" + result);

		System.out.println(user_id);
		System.out.println("디테일 페이지" + page);

		Expert expert = expertservice.expertlistOne(expertid);

		//조인 해서 가져오기.
		
		float review_rating = reviewservice.selectReviewList(expertid);
		
		
		// 포폴 출력
		Portfolio portfolio = expertservice.poexpertListOne(expertid);

		mv.setViewName("service/expert_details");
		mv.addObject("expertdata", expert);
		mv.addObject("user_id", user_id); // 지금 로그인 한 사용자의 아이디 가져옴
		mv.addObject("like", result); // 찜등록 데이터
		mv.addObject("page", page);
		mv.addObject("portfolio", portfolio);
		mv.addObject("count", count);
		mv.addObject("RequestCount", requestCount);
		mv.addObject("expert_id_login", expert_id_login);
		mv.addObject("review_rating",review_rating);
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/LikeExpert.Ajax", method = RequestMethod.POST, produces = "application/json")
	public int likeexpert_ajax(@RequestParam(value = "EXPERT_ID", required = false) String expert_id,
			@RequestParam(value = "USER_ID", required = false) String user_id, Like like, HttpServletResponse response)
			throws Exception {

		System.out.println("ajax 로 들어온 전문가 아이디:" + expert_id + "유저 아이디 : " + user_id);

		int result = likeservice.selectLike(expert_id, user_id);

		System.out.println("전문가 페이지에 들어감" + expert_id);
		// 커멘드 값으로 가져오기
		System.out.println("조회 완료:" + result);

		int resultf;

		if (result == 0) {

			int num = 1;
			like.setExpert_id(expert_id);
			like.setUser_id(user_id);
			like.setLike_state(num);

			likeservice.insertLike(like);

			System.out.println("찜등록 완료");
			resultf = 0;

		} else {

			int num = 1;
			like.setExpert_id(expert_id);
			like.setUser_id(user_id);
			like.setLike_state(num);
			likeservice.deleteLike(like);

			System.out.println("찜등록 삭제");
			resultf = 1;
		}

		return resultf;
	}

	// 리스트
	@ResponseBody
	@PostMapping(value = "ReviewList.Ajax")
	public List<Review> ReviewList(@RequestParam(value = "page", required = false) Integer page,
			@RequestParam(value = "expert_id", required = false) String expert_id) {

		List<Review> list = reviewservice.selectReviewList(expert_id, page);
		return list;
	}

	// 댓글 등록
	@ResponseBody
	@PostMapping(value = "ReviewAdd.Ajax")
	public void ReviewAdd_Ajax(Review review, HttpServletResponse response) throws Exception {
		
		//평점 더하기
		
		float rating_sum = (review.getRv_rating1() +  review.getRv_rating2() +  review.getRv_rating3()+
				 review.getRv_rating4() +  review.getRv_rating5() +  review.getRv_rating6()) /6;
		System.out.println("=========================="+rating_sum);
		
		review.setRv_sum(rating_sum);
		
		
		int result = reviewservice.insertReview(review);
		System.out.println("================____________"+result);
		if(result == 1) {
			reviewservice.updateReservation(review.getRv_expert_id(),review.getRv_user_id());

		}
		response.getWriter().print(result);
	}

	// 수정
	@PostMapping(value = "ReviewUpdate.Ajax")
	public void ReviewUpdate_Ajax(Review review, HttpServletResponse response) throws Exception {

		System.out.println("===========================리뷰넣기 넘어온값update");

		int ok = reviewservice.update(review);

		System.out.println(review.getRv_no());
		response.getWriter().print(ok);
	}

	@GetMapping("/portfolio_list")
	public String portfolio_list() {
		System.out.println("포폴 들어왔?");

		return "service/portfolio_list";
	}

	@GetMapping("/review_list")
	public String review_list() {
		System.out.println("후기 들어왔?");

		return "service/review_list";
	}

	@GetMapping("/price_list")
	public String price_list() {
		System.out.println("후기 들어왔?");

		return "service/price_list";
	}

	@GetMapping("/QnA_list")
	public ModelAndView QnA_list(@RequestParam(value="page", defaultValue = "1", required = false)int page, 
								ModelAndView mv) {
		System.out.println("Qna 들어왔?");	
		int limit = 10; // 한 화면에 출력할 레코드 갯수

		int listcount = qnaService.getListCount(); // 총 리스트 수(게시물의 갯수)를 받아옴

		// 총페이지 수
		int maxpage = (listcount + limit - 1) / limit;

		// 현재 페이지에 보여줄 시작 페이지 수 (1, 11, 21 등 ...)
		int startpage = ((page - 1) / 10) * 10 + 1;

		// 현재 페이지에 보여줄 마지막 페이지 수 (10, 20, 30 등 ...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		List<Qna> qnalist = qnaService.getBoardList(page, limit); // 리스트를 받아옴
		mv.setViewName("service/QnA_list");
		mv.addObject("page", page);
		mv.addObject("limit", limit);
		mv.addObject("listcount", listcount);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("qnalist", qnalist);
		return mv;
	}

	// 준비
	@ResponseBody
	@PostMapping("/Portfolio.Ajax")
	public List<Portfolio> Portfolio_Ajax(@RequestParam(value = "expert", required = false) String expert_id,
			ModelAndView mv) {

		System.out.println("포포포포포폴" + expert_id);

		List<Portfolio> list = expertservice.poexpertListOne1(expert_id);
		// list 형식으로 넣기
		return list;

	}

	@ResponseBody
	@PostMapping("/Review.Ajax")
	public List<Review> Review_Ajax(@RequestParam(value = "expert", required = false) String expert_id,
			HttpSession session) {
		System.out.println("리리리리리리리" + expert_id);

		List<Review> list = expertservice.ReviewRatingList(expert_id);
		return list;

	}

	@ResponseBody
	@RequestMapping(value = "/Request.Ajax", method = RequestMethod.POST)
	public String request_ajax(@RequestParam("realFiles") List<String> realFiles, MultipartHttpServletRequest request,
			Reservation reservation, @RequestParam Map<String, Object> paramMap) throws Exception {

		for (String realImage : realFiles) {
			logger.info("realFiles : " + realImage);
		}

		String user_id = (String) request.getSession().getAttribute("user_id");
		String expertId = "0";

		/** writer_type 1:사용자 로그인, 2:전문가 로그인 */
		int writerType = 0;

		if (user_id != null) {
			logger.info("사용자 로그인 아이디 : " + user_id);
			writerType = 1;
			paramMap.put("writer", user_id);

		} else if (expertId != null) {
			logger.info("전문가 로그인 아이디 : " + expertId);
			writerType = 2;
			paramMap.put("writer", expertId);
		}
		paramMap.put("writer_type", writerType);

		int result = expertservice.requestAjax(realFiles, request, paramMap, reservation);
		return result != 5 ? "success" : "error";
	}

	/********************************* 수리 *************************************/
	@GetMapping("/expert_repair.service")
	public ModelAndView expert_repair_service(HttpServletResponse response,
			// @RequestParam으로 page의 파라미터 값을 int page 에 담는다. 게시물이 없을 수도 있느니 defaultValue = 1
			// 로 예외처리를 해준다.
			ModelAndView mv, @RequestParam(value = "page", required = false, defaultValue = "1") Integer page)
			throws Exception {
		// 한 페이지에 보여줄 개수
		int limit = 9;

		// 전문가 리스트 개수 가져옴. - 수리
		int listcount = repairService.getExpertListCountRepair();
		System.out.println("전문가 리스트 수(listcount) : " + listcount);

		// 총 페이지수
		int maxpage = (listcount + limit - 1) / limit;
		// 현재 전문가 수 가 9명이니
		// ( 9 + 8 - 1 ) / 8 = 2;
		System.out.println("총 페이지수(maxpage): " + maxpage);

		// 현재 페이지에 보여줄 시작 페이지수
		int startpage = ((page - 1) / 9) * 9 + 1;
		// ((1-1) / 8 ) * 8 + 1 = 1;
		System.out.println("현재 페이지에서 보여줄 시작페이지 수(startpage) : " + startpage);

		// 현재 페이지에서 보여줄 마지막 수
		int endpage = startpage + 9 - 1;
		// endpage = 1 + 8 - 1 = 8;
		System.out.println("현재 페이지에서 보여줄 마지막 페이지 수(endpage) : " + endpage);

		if (endpage > maxpage) // 만약 maxpage 보다 endpage가 더 크다면
			endpage = maxpage; // endpage 에는

		// expert 형인
		List<Expert> expertlist = repairService.expertlist(page, limit);

		System.out.println("전문가 리스트" + expertlist);

		mv.setViewName("repair_service/expert_repair");
		mv.addObject("page", page);
		mv.addObject("limit", limit);
		mv.addObject("listcount", listcount);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		// 전문가 리스트
		mv.addObject("expertlist", expertlist);

		return mv;
	}

	// 전문가 상세 페이지
	// 여기서 견적 요청이 이루어짐.
	@GetMapping("/repairDetail.service")
	public ModelAndView service_details1(ModelAndView mv,
			@RequestParam(value = "expert", required = false) String expertid, HttpServletResponse response,
			@RequestParam(value = "user_id", required = false) String user_id1, HttpSession session,
			@RequestParam(value = "page", required = false) Integer page) throws Exception {

		System.out.println("넘어온값 : " + expertid);

		String user_id = (String) session.getAttribute("user_id");

		// 찜등록 데이터 있는지 조회`
		int result = likeservice.selectLike(expertid, user_id);
		int count = reviewservice.getReviewCount(expertid);
		// 예약 건수
		int requestCount = expertservice.getRequestCount(expertid);
		
		String expert_id_login = (String) session.getAttribute("expert_id");
		

		System.out.println("찜등록 아이디 :" + expertid + user_id);
		System.out.println("찜등록 데이터+" + result);

		System.out.println(user_id);
		System.out.println("디테일 페이지" + page);

		Expert expert = expertservice.expertlistOne(expertid);

		// 포폴 출력
		Portfolio portfolio = expertservice.poexpertListOne(expertid);
		

		float review_rating = reviewservice.selectReviewList(expertid);

		mv.setViewName("repair_service/repair_details");
		mv.addObject("expertdata", expert);
		mv.addObject("user_id", user_id); // 지금 로그인 한 사용자의 아이디 가져옴
		mv.addObject("like", result); // 찜등록 데이터
		mv.addObject("page", page);
		mv.addObject("portfolio", portfolio);
		mv.addObject("count", count);
		mv.addObject("RequestCount", requestCount);
		mv.addObject("expert_id_login", expert_id_login);
		mv.addObject("review_rating",review_rating);
		return mv;
	}

	/*********************************** 청소 ************************************/
	// 청소 리스트
	@GetMapping("/expert_cleaning.service")
	public ModelAndView expert_cleaning_service(HttpServletResponse response,
			// @RequestParam으로 page의 파라미터 값을 int page 에 담는다. 게시물이 없을 수도 있느 defaultValue = 1
			// 로 예외처리를 해준다.
			ModelAndView mv, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page)
			throws Exception {
		// 한 페이지에 보여줄 개수
		int limit = 9;

		// 전문가 리스트 개수 가져옴. - 수리
		int listcount = cleaningService.getExpertListCountCleaning();
		System.out.println("전문가 리스트 수(listcount) : " + listcount);

		// 총 페이지수
		int maxpage = (listcount + limit - 1) / limit;
		// 현재 전문가 수 가 9명이니
		// ( 9 + 8 - 1 ) / 8 = 2;
		System.out.println("총 페이지수(maxpage): " + maxpage);

		// 현재 페이지에 보여줄 시작 페이지수
		int startpage = ((page - 1) / 9) * 9 + 1;
		// ((1-1) / 8 ) * 8 + 1 = 1;
		System.out.println("현재 페이지에서 보여줄 시작페이지 수(startpage) : " + startpage);

		// 현재 페이지에서 보여줄 마지막 수
		int endpage = startpage + 9 - 1;
		// endpage = 1 + 8 - 1 = 8;
		System.out.println("현재 페이지에서 보여줄 마지막 페이지 수(endpage) : " + endpage);

		if (endpage > maxpage) // 만약 maxpage 보다 endpage가 더 크다면
			endpage = maxpage; // endpage 에는

		// expert 형인
		List<Expert> expertlist = cleaningService.expertlist(page, limit);

		System.out.println("전문가 리스트" + expertlist);

		mv.setViewName("cleaning_service/expert_cleaning");
		mv.addObject("page", page);
		mv.addObject("limit", limit);
		mv.addObject("listcount", listcount);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		// 전문가 리스트
		mv.addObject("expertlist", expertlist);

		return mv;
	}

	// 전문가 상세 페이지
	// 여기서 견적 요청이 이루어짐.
	@GetMapping("/cleaningDetail.service")
	public ModelAndView service_details2(ModelAndView mv,
			@RequestParam(value = "expert", required = false) String expertid, HttpServletResponse response,
			@RequestParam(value = "user_id", required = false) String user_id1, HttpSession session,
			@RequestParam(value = "page", required = false) Integer page) throws Exception {

		System.out.println("넘어온값 : " + expertid);

		String user_id = (String) session.getAttribute("user_id");

		// 찜등록 데이터 있는지 조회
		int result = likeservice.selectLike(expertid, user_id);
		int count = reviewservice.getReviewCount(expertid);
		// 예약 건수
		int requestCount = expertservice.getRequestCount(expertid);

		String expert_id_login = (String) session.getAttribute("expert_id");
		System.out.println("찜등록 아이디 :" + expertid + user_id);
		System.out.println("찜등록 데이터+" + result);

		System.out.println(user_id);
		System.out.println("디테일 페이지" + page);

		Expert expert = expertservice.expertlistOne(expertid);
		

		float review_rating = reviewservice.selectReviewList(expertid);

		// 포폴 출력
		Portfolio portfolio = expertservice.poexpertListOne(expertid);
		mv.addObject("expert_id_login", expert_id_login);
		mv.setViewName("cleaning_service/cleaning_details");
		mv.addObject("expertdata", expert);
		mv.addObject("user_id", user_id); // 지금 로그인 한 사용자의 아이디 가져옴
		mv.addObject("like", result); // 찜등록 데이터
		mv.addObject("page", page);
		mv.addObject("portfolio", portfolio);
		mv.addObject("count", count);
		mv.addObject("RequestCount", requestCount);
		mv.addObject("review_rating",review_rating);
		return mv;
	}

	/***************************** 해충 expert_insect.service *********************/
	@GetMapping("/expert_insect.service")
	public ModelAndView expert_insect_service(HttpServletResponse response,
			// @RequestParam으로 page의 파라미터 값을 int page 에 담는다. 게시물이 없을 수도 있느니 defaultValue = 1
			// 로 예외처리를 해준다.
			ModelAndView mv, @RequestParam(value = "page", required = false, defaultValue = "1") Integer page)
			throws Exception {
		// 한 페이지에 보여줄 개수
		int limit = 9;

		// 전문가 리스트 개수 가져옴. - 수리
		int listcount = insectService.getExpertListCountCleaning();
		System.out.println("전문가 리스트 수(listcount) : " + listcount);

		// 총 페이지수
		int maxpage = (listcount + limit - 1) / limit;
		// 현재 전문가 수 가 9명이니
		// ( 9 + 8 - 1 ) / 8 = 2;
		System.out.println("총 페이지수(maxpage): " + maxpage);

		// 현재 페이지에 보여줄 시작 페이지수
		int startpage = ((page - 1) / 9) * 9 + 1;
		// ((1-1) / 8 ) * 8 + 1 = 1;
		System.out.println("현재 페이지에서 보여줄 시작페이지 수(startpage) : " + startpage);

		// 현재 페이지에서 보여줄 마지막 수
		int endpage = startpage + 9 - 1;
		// endpage = 1 + 8 - 1 = 8;
		System.out.println("현재 페이지에서 보여줄 마지막 페이지 수(endpage) : " + endpage);

		if (endpage > maxpage) // 만약 maxpage 보다 endpage가 더 크다면
			endpage = maxpage; // endpage 에는

		// expert 형인
		List<Expert> expertlist = insectService.expertlist(page, limit);

		System.out.println("전문가 리스트" + expertlist);

		mv.setViewName("insect_service/expert_insect");
		mv.addObject("page", page);
		mv.addObject("limit", limit);
		mv.addObject("listcount", listcount);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		// 전문가 리스트
		mv.addObject("expertlist", expertlist);

		return mv;
	}

	// 전문가 상세 페이지
	// 여기서 견적 요청이 이루어짐.
	@GetMapping("/insectDetail.service")
	public ModelAndView service_details3(ModelAndView mv,
			@RequestParam(value = "expert", required = false) String expertid, HttpServletResponse response,
			@RequestParam(value = "user_id", required = false) String user_id1, HttpSession session,
			@RequestParam(value = "page", required = false) Integer page) throws Exception {

		System.out.println("넘어온값 : " + expertid);

		String user_id = (String) session.getAttribute("user_id");

		// 찜등록 데이터 있는지 조회
		int result = likeservice.selectLike(expertid, user_id);
		int count = reviewservice.getReviewCount(expertid);
		// 예약 건수
		String expert_id_login = (String) session.getAttribute("expert_id");
		int requestCount = expertservice.getRequestCount(expertid);

		System.out.println("찜등록 아이디 :" + expertid + user_id);
		System.out.println("찜등록 데이터+" + result);

		System.out.println(user_id);
		System.out.println("디테일 페이지" + page);

		Expert expert = expertservice.expertlistOne(expertid);
		

		float review_rating = reviewservice.selectReviewList(expertid);

		// 포폴 출력
		Portfolio portfolio = expertservice.poexpertListOne(expertid);

		mv.setViewName("insect_service/insect_details");
		mv.addObject("expert_id_login", expert_id_login);
		mv.addObject("expertdata", expert);
		mv.addObject("user_id", user_id); // 지금 로그인 한 사용자의 아이디 가져옴
		mv.addObject("like", result); // 찜등록 데이터
		mv.addObject("page", page);
		mv.addObject("portfolio", portfolio);
		mv.addObject("count", count);
		mv.addObject("RequestCount", requestCount);
		mv.addObject("review_rating",review_rating);
		return mv;
	}

	// 로그인했는지 안 했는지 가져오는거..ㄴ
	@ResponseBody
	@PostMapping("/ExpertLogin.Ajax")
	public int Expert_login_Ajax(@RequestParam(value = "expert", required = false) String expert_id,HttpSession session) {
		
		String expert_id_login1 = (String) session.getAttribute("expert_id");
		
		System.out.println("전문가 로그인 ========"+expert_id);
		System.out.println("전문가 로그인 ========"+expert_id_login1);
		
		int result = 0;

		if (expert_id_login1 != null) {
			result = 1;
			System.out.println("null값이 아냐~");
		} else {
			result = 0;
			System.out.println("null값임");
		}
		return result;

	}
	//리뷰 삭제..
	@PostMapping("/ReviewDelete.Ajax")
	public void CommentDelete(int num,HttpServletResponse response) throws Exception{
		
		int result = reviewservice.reviewDelete(num);
		
		response.getWriter().print(result);
	}

	@ResponseBody
	@RequestMapping(value="qnaAdd.Ajax")
	public int qnaAdd( Qna qna) {
		System.out.println(qna.getQNA_ID()+", "+qna.getQNA_CONTENT());
		
		System.out.println("인서트보드");
		
		return qnaService.insertboard(qna);
	}
	
	@ResponseBody
	@RequestMapping(value="qnaReplyAction.Ajax")
	public int qnaReplyAction(Qna qna) {
		System.out.println("qnaReplyAction.Ajax의 QNA_EXID="+qna.getQNA_EXID());
		return qnaService.replyboard(qna);
	}
	
	@ResponseBody
	@RequestMapping(value="/QnA_list_view.sv", produces="application/json; charset=UTF-8")
	public Map<String, Object> qnalistview(ModelAndView mv, 
					@RequestParam(value="page", defaultValue = "1", required = false)int page) {
		

		System.out.println("qna_list_view 들어옴");
		int limit = 10; // 한 화면에 출력할 레코드 갯수

		int listcount = qnaService.getListCount(); // 총 리스트 수(게시물의 갯수)를 받아옴

		// 총페이지 수
		int maxpage = (listcount + limit - 1) / limit;

		// 현재 페이지에 보여줄 시작 페이지 수 (1, 11, 21 등 ...)
		int startpage = ((page - 1) / 10) * 10 + 1;

		// 현재 페이지에 보여줄 마지막 페이지 수 (10, 20, 30 등 ...)
		int endpage = startpage + 10 - 1;

		if (endpage > maxpage)
			endpage = maxpage;

		List<Qna> qnalist = qnaService.getBoardList(page, limit); // 리스트를 받아옴
		System.out.println("리스트 받아옴");
		
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("page", page);   //request.setAttribute 로 담았던걸 여기서 다 담음
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("listcount", listcount);
		map.put("limit", limit);
		map.put("qnalist", qnalist);
		return map;
	}
	
	//견적 요청 번호
	@ResponseBody
	@RequestMapping("UserReview.Ajax")
	public int UserReview_Ajax(@RequestParam(value = "user_id") String user_id,@RequestParam(value = "expert_id") String expert_id) {
		int result = reviewservice.selectReservation(user_id,expert_id);
		return result;
		
	}

	
	
}
