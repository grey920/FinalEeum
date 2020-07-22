package com.kh.eeum.controller;

import java.util.List;
import java.util.Map;

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
import com.kh.eeum.domain.Review;
import com.kh.eeum.service.CleaningService;
import com.kh.eeum.service.ExpertRepairService;
import com.kh.eeum.service.ExpertService;
import com.kh.eeum.service.ExpertServiceImpl;
import com.kh.eeum.service.InsectService;
import com.kh.eeum.service.LikeService;
import com.kh.eeum.service.ReviewService;


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
	
	private static final Logger logger = LoggerFactory.getLogger(ExpertServiceImpl.class);

	// 전문가 리스트
	@GetMapping("/expert.service")
	public ModelAndView service_list(HttpServletResponse response,
			// @RequestParam으로 page의 파라미터 값을 int page 에 담는다. 게시물이 없을 수도 있느니 defaultValue = 1
			// 로 예외처리를 해준다.
			ModelAndView mv, @RequestParam(value = "page", defaultValue = "1", required = false) int page)
			throws Exception {
		// 한 페이지에 보여줄 개수
		int limit = 8;

		// 전문가 리스트 개수 가져옴.
		int listcount = expertservice.getExpertListCount();
		System.out.println("전문가 리스트 수(listcount) : " + listcount);

		// 총 페이지수
		int maxpage = (listcount + limit - 1) / limit;
		// 현재 전문가 수 가 9명이니
		// ( 9 + 8 - 1 ) / 8 = 2;
		System.out.println("총 페이지수(maxpage): " + maxpage);

		// 현재 페이지에 보여줄 시작 페이지수
		int startpage = ((page - 1) / 8) * 8 + 1;
		// ((1-1) / 8 ) * 8 + 1 = 1;
		System.out.println("현재 페이지에서 보여줄 시작페이지 수(startpage) : " + startpage);

		// 현재 페이지에서 보여줄 마지막 수
		int endpage = startpage + 8 - 1;
		// endpage = 1 + 8 - 1 = 8;
		System.out.println("현재 페이지에서 보여줄 마지막 페이지 수(endpage) : " + endpage);

		if (endpage > maxpage) // 만약 maxpage 보다 endpage가 더 크다면
			endpage = maxpage; // endpage 에는

		// expert 형인
		List<Expert> expertlist = expertservice.expertlist(page, limit);
	
		System.out.println("전문가 리스트"+expertlist);
		
	
		
		mv.setViewName("service/expert_list");
		mv.addObject("page", page);
		mv.addObject("limit", limit);
		mv.addObject("listcount", listcount);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		//전문가 리스트
		mv.addObject("expertlist", expertlist);
	
		return mv;
	}

	// 전문가 상세 페이지
	// 여기서 견적 요청이 이루어짐.
	@GetMapping("/expertDetail.service")
	public ModelAndView service_details(ModelAndView mv,
			@RequestParam(value = "expert", required = false) String expertid, HttpServletResponse response,
			@RequestParam(value = "user_id", required = false) String user_id1, HttpSession session,
			@RequestParam(value = "page", required = false) int page) throws Exception {

		System.out.println("넘어온값 : " + expertid);

		String user_id = (String) session.getAttribute("user_id");
		String expert_id_login = (String) session.getAttribute("expert_id");

		System.out.println("로그인로그인 전문가존문가"+expert_id_login);
		// 찜등록 데이터 있는지 조회
		int result = likeservice.selectLike(expertid, user_id);
		int count = reviewservice.getReviewCount(expertid);
		//예약 건수
		int requestCount = expertservice.getRequestCount(expertid);
		
		
	
		System.out.println("찜등록 아이디 :" + expertid + user_id);
		System.out.println("찜등록 데이터+" + result);

		System.out.println(user_id);
		System.out.println("디테일 페이지" + page);

		Expert expert = expertservice.expertlistOne(expertid);
		
		//포폴 출력
		Portfolio portfolio = expertservice.poexpertListOne(expertid);
		

		mv.setViewName("service/expert_details");
		mv.addObject("expertdata", expert);
		mv.addObject("user_id", user_id); // 지금 로그인 한 사용자의 아이디 가져옴
		mv.addObject("like", result); // 찜등록 데이터
		mv.addObject("page", page);
		mv.addObject("portfolio", portfolio);
		mv.addObject("count",count);
		mv.addObject("RequestCount", requestCount);
		mv.addObject("expert_id_login", expert_id_login);
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/LikeExpert.Ajax", method = RequestMethod.POST, produces = "application/json")
	public int likeexpert_ajax(@RequestParam(value = "EXPERT_ID", required = false) String expert_id,
			@RequestParam(value = "USER_ID", required = false) String user_id, Like like, HttpServletResponse response
			) throws Exception {

		System.out.println("ajax 로 들어온 전문가 아이디:" + expert_id + "유저 아이디 : " + user_id);

		int result = likeservice.selectLike(expert_id, user_id);

		
		System.out.println("전문가 페이지에 들어감"+expert_id);
		//커멘드 값으로 가져오기
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
	
	//리스트
	@ResponseBody
	@PostMapping(value = "ReviewList.Ajax")
	public List<Review> ReviewList(
			@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			@RequestParam(value = "expert_id", required = false) String expert_id){
		
		List<Review> list = reviewservice.selectReviewList(expert_id,page);
		System.out.println("리뷰 쓰기"+expert_id);
		System.out.println("후기"+list.size());
		
		
		System.out.println("후기 수"+list);
		return list;
	}
	
	
	//댓글 등록
	@ResponseBody
	@PostMapping(value = "ReviewAdd.Ajax")
	public void ReviewAdd_Ajax(Review review,
							   HttpServletResponse response) throws Exception{
		
		System.out.println("===========================리뷰넣기 넘어온값"+review.getRv_expert_id());
		int result = reviewservice.insertReview(review);
		response.getWriter().print(result);
	}
	
	
	//수정
	@PostMapping(value = "ReviewUpdate.Ajax")
	public void ReviewUpdate_Ajax(Review review,HttpServletResponse response) throws Exception{
		
		System.out.println("후기후기후기후기"+review.getRv_no());
		
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
	public String QnA_list() {
		System.out.println("후기 들어왔?");

		return "service/QnA_list";
	}
	
	//준비
	@ResponseBody
	@PostMapping("/Portfolio.Ajax")
	public List<Portfolio> Portfolio_Ajax(@RequestParam(value = "expert",required = false) String expert_id,ModelAndView mv ){
		
		System.out.println("포포포포포폴"+expert_id);
		
		
		List<Portfolio> list = expertservice.poexpertListOne1(expert_id);
		//list 형식으로 넣기
		return list;
		
	}
	
	@ResponseBody
	@PostMapping("/Review.Ajax")
	public List<Review> Review_Ajax(@RequestParam(value = "expert",required = false) String expert_id){
		System.out.println("리리리리리리리"+expert_id);
		
		List<Review> list = expertservice.ReviewRatingList(expert_id);
		
		return list;
		
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/Request.Ajax", method = RequestMethod.POST)
	public String  request_ajax(@RequestParam("realFiles") List<String> realFiles , MultipartHttpServletRequest request,  @RequestParam Map<String, Object> paramMap) throws Exception {
		
		for(String realImage : realFiles) {           
			logger.info("realFiles : "+realImage);
        }
				
		String userId=(String)request.getSession().getAttribute("user_id");
		String expertId=(String)request.getSession().getAttribute("expert_id");	
		
		/** writer_type 1:사용자 로그인,  2:전문가 로그인  */
		int writerType=0;
		if(userId!=null) {			
			logger.info("사용자 로그인 아이디 : " +userId);
			writerType=1;
			paramMap.put("writer", userId);
		}else if(expertId!=null) {			
			logger.info("전문가 로그인 아이디 : " +expertId);
			writerType=2;
			paramMap.put("writer", expertId);
		}
		paramMap.put("writer_type", writerType);
				
		int result=expertservice.requestAjax(realFiles, request, paramMap);	
		return result!=5? "success": "error";		
	}
	

	/********************************* 수리 *************************************/
	@GetMapping("/expert_repair.service")
	public ModelAndView expert_repair_service(HttpServletResponse response,
			// @RequestParam으로 page의 파라미터 값을 int page 에 담는다. 게시물이 없을 수도 있느니 defaultValue = 1
			// 로 예외처리를 해준다.
			ModelAndView mv, @RequestParam(value = "page", defaultValue = "1", required = false) int page)
			throws Exception {
		// 한 페이지에 보여줄 개수
		int limit = 8;

		// 전문가 리스트 개수 가져옴. -  수리
		int listcount = repairService.getExpertListCountRepair();
		System.out.println("전문가 리스트 수(listcount) : " + listcount);

		// 총 페이지수
		int maxpage = (listcount + limit - 1) / limit;
		// 현재 전문가 수 가 9명이니
		// ( 9 + 8 - 1 ) / 8 = 2;
		System.out.println("총 페이지수(maxpage): " + maxpage);

		// 현재 페이지에 보여줄 시작 페이지수
		int startpage = ((page - 1) / 8) * 8 + 1;
		// ((1-1) / 8 ) * 8 + 1 = 1;
		System.out.println("현재 페이지에서 보여줄 시작페이지 수(startpage) : " + startpage);

		// 현재 페이지에서 보여줄 마지막 수
		int endpage = startpage + 8 - 1;
		// endpage = 1 + 8 - 1 = 8;
		System.out.println("현재 페이지에서 보여줄 마지막 페이지 수(endpage) : " + endpage);

		if (endpage > maxpage) // 만약 maxpage 보다 endpage가 더 크다면
			endpage = maxpage; // endpage 에는

		// expert 형인
		List<Expert> expertlist = repairService.expertlist(page, limit);
	
		System.out.println("전문가 리스트"+expertlist);
		
	
		
		mv.setViewName("repair_service/expert_repair");
		mv.addObject("page", page);
		mv.addObject("limit", limit);
		mv.addObject("listcount", listcount);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		//전문가 리스트
		mv.addObject("expertlist", expertlist);
	
		return mv;
	}
	
	
	// 전문가 상세 페이지
		// 여기서 견적 요청이 이루어짐.
		@GetMapping("/repairDetail.service")
		public ModelAndView service_details1(ModelAndView mv,
				@RequestParam(value = "expert", required = false) String expertid, HttpServletResponse response,
				@RequestParam(value = "user_id", required = false) String user_id1, HttpSession session,
				@RequestParam(value = "page", required = false) int page) throws Exception {

			System.out.println("넘어온값 : " + expertid);

			String user_id = (String) session.getAttribute("user_id");

			// 찜등록 데이터 있는지 조회
			int result = likeservice.selectLike(expertid, user_id);
			int count = reviewservice.getReviewCount(expertid);
			//예약 건수
			int requestCount = expertservice.getRequestCount(expertid);
			
			
		
			System.out.println("찜등록 아이디 :" + expertid + user_id);
			System.out.println("찜등록 데이터+" + result);

			System.out.println(user_id);
			System.out.println("디테일 페이지" + page);

			Expert expert = expertservice.expertlistOne(expertid);
			
			//포폴 출력
			Portfolio portfolio = expertservice.poexpertListOne(expertid);
			

			mv.setViewName("repair_service/repair_details");
			mv.addObject("expertdata", expert);
			mv.addObject("user_id", user_id); // 지금 로그인 한 사용자의 아이디 가져옴
			mv.addObject("like", result); // 찜등록 데이터
			mv.addObject("page", page);
			mv.addObject("portfolio", portfolio);
			mv.addObject("count",count);
			mv.addObject("RequestCount", requestCount);
			return mv;
		}
	
	
/***********************************창소 ************************************/
		//청소 리스트
		@GetMapping("/expert_cleaning.service")
		public ModelAndView expert_cleaning_service(HttpServletResponse response,
				// @RequestParam으로 page의 파라미터 값을 int page 에 담는다. 게시물이 없을 수도 있느니 defaultValue = 1
				// 로 예외처리를 해준다.
				ModelAndView mv, @RequestParam(value = "page", defaultValue = "1", required = false) int page)
				throws Exception {
			// 한 페이지에 보여줄 개수
			int limit = 8;

			// 전문가 리스트 개수 가져옴. -  수리
			int listcount = cleaningService.getExpertListCountCleaning();
			System.out.println("전문가 리스트 수(listcount) : " + listcount);

			// 총 페이지수
			int maxpage = (listcount + limit - 1) / limit;
			// 현재 전문가 수 가 9명이니
			// ( 9 + 8 - 1 ) / 8 = 2;
			System.out.println("총 페이지수(maxpage): " + maxpage);

			// 현재 페이지에 보여줄 시작 페이지수
			int startpage = ((page - 1) / 8) * 8 + 1;
			// ((1-1) / 8 ) * 8 + 1 = 1;
			System.out.println("현재 페이지에서 보여줄 시작페이지 수(startpage) : " + startpage);

			// 현재 페이지에서 보여줄 마지막 수
			int endpage = startpage + 8 - 1;
			// endpage = 1 + 8 - 1 = 8;
			System.out.println("현재 페이지에서 보여줄 마지막 페이지 수(endpage) : " + endpage);

			if (endpage > maxpage) // 만약 maxpage 보다 endpage가 더 크다면
				endpage = maxpage; // endpage 에는

			// expert 형인
			List<Expert> expertlist = cleaningService.expertlist(page, limit);
		
			System.out.println("전문가 리스트"+expertlist);
			
		
			
			mv.setViewName("cleaning_service/expert_cleaning");
			mv.addObject("page", page);
			mv.addObject("limit", limit);
			mv.addObject("listcount", listcount);
			mv.addObject("maxpage", maxpage);
			mv.addObject("startpage", startpage);
			mv.addObject("endpage", endpage);
			//전문가 리스트
			mv.addObject("expertlist", expertlist);
		
			return mv;
		}
	
		// 전문가 상세 페이지
				// 여기서 견적 요청이 이루어짐.
				@GetMapping("/cleaningDetail.service")
				public ModelAndView service_details2(ModelAndView mv,
						@RequestParam(value = "expert", required = false) String expertid, HttpServletResponse response,
						@RequestParam(value = "user_id", required = false) String user_id1, HttpSession session,
						@RequestParam(value = "page", required = false) int page) throws Exception {

					System.out.println("넘어온값 : " + expertid);

					String user_id = (String) session.getAttribute("user_id");

					// 찜등록 데이터 있는지 조회
					int result = likeservice.selectLike(expertid, user_id);
					int count = reviewservice.getReviewCount(expertid);
					//예약 건수
					int requestCount = expertservice.getRequestCount(expertid);
					
					
				
					System.out.println("찜등록 아이디 :" + expertid + user_id);
					System.out.println("찜등록 데이터+" + result);

					System.out.println(user_id);
					System.out.println("디테일 페이지" + page);

					Expert expert = expertservice.expertlistOne(expertid);
					
					//포폴 출력
					Portfolio portfolio = expertservice.poexpertListOne(expertid);
					

					mv.setViewName("cleaning_service/cleaning_details");
					mv.addObject("expertdata", expert);
					mv.addObject("user_id", user_id); // 지금 로그인 한 사용자의 아이디 가져옴
					mv.addObject("like", result); // 찜등록 데이터
					mv.addObject("page", page);
					mv.addObject("portfolio", portfolio);
					mv.addObject("count",count);
					mv.addObject("RequestCount", requestCount);
					return mv;
				}

				/*****************************해충 expert_insect.service*********************/
				@GetMapping("/expert_insect.service")
				public ModelAndView expert_insect_service(HttpServletResponse response,
						// @RequestParam으로 page의 파라미터 값을 int page 에 담는다. 게시물이 없을 수도 있느니 defaultValue = 1
						// 로 예외처리를 해준다.
						ModelAndView mv, @RequestParam(value = "page", defaultValue = "1", required = false) int page)
						throws Exception {
					// 한 페이지에 보여줄 개수
					int limit = 8;

					// 전문가 리스트 개수 가져옴. -  수리
					int listcount = insectService.getExpertListCountCleaning();
					System.out.println("전문가 리스트 수(listcount) : " + listcount);

					// 총 페이지수
					int maxpage = (listcount + limit - 1) / limit;
					// 현재 전문가 수 가 9명이니
					// ( 9 + 8 - 1 ) / 8 = 2;
					System.out.println("총 페이지수(maxpage): " + maxpage);

					// 현재 페이지에 보여줄 시작 페이지수
					int startpage = ((page - 1) / 8) * 8 + 1;
					// ((1-1) / 8 ) * 8 + 1 = 1;
					System.out.println("현재 페이지에서 보여줄 시작페이지 수(startpage) : " + startpage);

					// 현재 페이지에서 보여줄 마지막 수
					int endpage = startpage + 8 - 1;
					// endpage = 1 + 8 - 1 = 8;
					System.out.println("현재 페이지에서 보여줄 마지막 페이지 수(endpage) : " + endpage);

					if (endpage > maxpage) // 만약 maxpage 보다 endpage가 더 크다면
						endpage = maxpage; // endpage 에는

					// expert 형인
					List<Expert> expertlist = insectService.expertlist(page, limit);
				
					System.out.println("전문가 리스트"+expertlist);
					
				
					
					mv.setViewName("insect_service/expert_insect");
					mv.addObject("page", page);
					mv.addObject("limit", limit);
					mv.addObject("listcount", listcount);
					mv.addObject("maxpage", maxpage);
					mv.addObject("startpage", startpage);
					mv.addObject("endpage", endpage);
					//전문가 리스트
					mv.addObject("expertlist", expertlist);
				
					return mv;
				}
			
				// 전문가 상세 페이지
						// 여기서 견적 요청이 이루어짐.
						@GetMapping("/insectDetail.service")
						public ModelAndView service_details3(ModelAndView mv,
								@RequestParam(value = "expert", required = false) String expertid, HttpServletResponse response,
								@RequestParam(value = "user_id", required = false) String user_id1, HttpSession session,
								@RequestParam(value = "page", required = false) int page) throws Exception {

							System.out.println("넘어온값 : " + expertid);

							String user_id = (String) session.getAttribute("user_id");

							// 찜등록 데이터 있는지 조회
							int result = likeservice.selectLike(expertid, user_id);
							int count = reviewservice.getReviewCount(expertid);
							//예약 건수
							int requestCount = expertservice.getRequestCount(expertid);
							
							
						
							System.out.println("찜등록 아이디 :" + expertid + user_id);
							System.out.println("찜등록 데이터+" + result);

							System.out.println(user_id);
							System.out.println("디테일 페이지" + page);

							Expert expert = expertservice.expertlistOne(expertid);
							
							//포폴 출력
							Portfolio portfolio = expertservice.poexpertListOne(expertid);
							

							mv.setViewName("insect_service/insect_details");
							mv.addObject("expertdata", expert);
							mv.addObject("user_id", user_id); // 지금 로그인 한 사용자의 아이디 가져옴
							mv.addObject("like", result); // 찜등록 데이터
							mv.addObject("page", page);
							mv.addObject("portfolio", portfolio);
							mv.addObject("count",count);
							mv.addObject("RequestCount", requestCount);
							return mv;
						}
						
						
}
