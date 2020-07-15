package com.kh.eeum.controller;

import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.kh.eeum.domain.Expert;
import com.kh.eeum.domain.Like;
import com.kh.eeum.service.ExpertService;
import com.kh.eeum.service.LikeService;

@Controller
public class ExpertController {

	@Autowired
	ExpertService expertservice;

	@Autowired
	LikeService likeservice;

	// 전문가 리스트
	@GetMapping("/expert.list")
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
		mv.setViewName("service/expert_list");
		mv.addObject("page", page);
		mv.addObject("limit", limit);
		mv.addObject("listcount", listcount);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("expertlist", expertlist);
		return mv;
	}

	// 전문가 상세 페이지
	@GetMapping("/expert_details")
	public ModelAndView service_details(ModelAndView mv,
			@RequestParam(value = "expert", required = false) String expertid, HttpServletResponse response,
			@RequestParam(value = "user_id", required = false) String user_id1, HttpSession session) throws Exception {

		System.out.println("넘어온값 : " + expertid);

		String user_id = (String) session.getAttribute("user_id");

		// 찜등록 데이터 있는지 조회
		int result = likeservice.selectLike(expertid, user_id);
		System.out.println("찜등록 아이디 :" + expertid + user_id);
		System.out.println("찜등록 데이터+" + result);

		System.out.println(user_id);

		Expert expert = expertservice.expertlistOne(expertid);

		mv.setViewName("service/expert_details");
		mv.addObject("expertdata", expert);
		mv.addObject("user_id", user_id); // 지금 로그인 한 사용자의 아이디 가져옴
		mv.addObject("like", result); // 찜등록 데이터
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/LikeExpert.Ajax", method = RequestMethod.POST, produces = "application/json")
	public int likeexpert_ajax(@RequestParam(value = "expert_id", required = false) String expert_id,
			@RequestParam(value = "user_id", required = false) String user_id, Like like, HttpServletResponse response,
			ModelAndView mv) throws Exception {

		System.out.println("ajax 로 들어온 전문가 아이디:" + expert_id + "유저 아이디 : " + user_id);

		int result = likeservice.selectLike(expert_id, user_id);

		System.out.println("조회 완료:" + result);

		int resultf;

		if (result == 0) {

			int num = 1;
			like.setExpert_id(expert_id);
			like.setUser_id(user_id);
			like.setLike_state(num);
			int liketo = likeservice.insertLike(like);

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

	//
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

}
