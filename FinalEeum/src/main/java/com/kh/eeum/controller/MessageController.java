package com.kh.eeum.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.eeum.domain.Message;
import com.kh.eeum.service.MessageService;


@Controller
public class MessageController {
	
	@Autowired
	private MessageService messageservice;
	
	@RequestMapping(value="msgWrite.net")
	public String msgWrite () {
		return "msgWrite";
	}
	
	@RequestMapping(value="msgJustView.net")
	public String msgJustView () {
		return "msgView";
	}
	
	@RequestMapping(value="msgView.net")
	public String msgView (HttpServletRequest request) {
		int msg_no = Integer.parseInt(request.getParameter("msg_no"));
		System.out.println(msg_no);
		
		int result = messageservice.msgRead(msg_no);
		System.out.println(result);
		
		if (result == 1) {
			return "msgView";
			
		} else {
			return null;
		}
		
	}

	@RequestMapping(value="messageProcess.net", method=RequestMethod.POST)
	public void messageProcess (Message message, HttpServletResponse response,
													HttpServletRequest request) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		int result = messageservice.send(message);
		out.println("<script>");
		
		if (result==1)  {
			out.println("alert('메시지를 보냈습니다 💌');");
			out.println("window.close();");
			
		} else if (result==-1) {
			out.println("alert('메시지 전송에 실패했습니다.');");
			out.println("history.back()");
		}
		
		out.println("</script>");
		out.close();
	}
	
	@RequestMapping(value="messageSend.net")
	public ModelAndView msgSend (@RequestParam(value="page", defaultValue="1", required=false) int page,
														HttpSession session, ModelAndView mv) {
		
		String user_id = (String) session.getAttribute("user_id");
		String expert_id = (String) session.getAttribute("expert_id");
		int sendCount;
		List<Message> slist;
		
		int limit = 10;
		int maxpage;
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 -1;
		
		if(user_id == null) {
			sendCount = messageservice.sendCount(expert_id);
			maxpage = (sendCount + limit -1) / limit;
			slist = messageservice.sendMsg(expert_id, page, limit);
			
		} else {
			sendCount = messageservice.sendCount(user_id);
			maxpage = (sendCount + limit -1) / limit;
			slist = messageservice.sendMsg(user_id, page, limit);
		}
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		mv.setViewName("UE/mypage_message2");
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("sendCount", sendCount);
		mv.addObject("slist", slist);
		mv.addObject("limit", limit);
		
		return mv;
	}
	
	@RequestMapping(value="messageReceive.net")
	public ModelAndView msgRecevie (@RequestParam(value="page", defaultValue="1", required=false) int page,
			HttpSession session, ModelAndView mv) {
		
		String user_id = (String) session.getAttribute("user_id");
		String expert_id = (String) session.getAttribute("expert_id");
		int receiveCount;
		List<Message> rlist;
		
		int limit = 10;
		int maxpage;
		int startpage = ((page - 1) / 10) * 10 + 1;
		int endpage = startpage + 10 -1;
		
		if(user_id == null) {
			receiveCount = messageservice.receiveCount(expert_id);
			maxpage = (receiveCount + limit -1) / limit;
			rlist = messageservice.receiveMsg(expert_id, page, limit);
			
		} else {
			receiveCount = messageservice.receiveCount(user_id);
			maxpage = (receiveCount + limit -1) / limit;
			rlist = messageservice.receiveMsg(user_id, page, limit);
		}
		
		if(endpage > maxpage)
			endpage = maxpage;
		
		mv.setViewName("UE/mypage_message");
		mv.addObject("page", page);
		mv.addObject("maxpage", maxpage);
		mv.addObject("startpage", startpage);
		mv.addObject("endpage", endpage);
		mv.addObject("receiveCount", receiveCount);
		mv.addObject("rlist", rlist);
		mv.addObject("limit", limit);
		
		return mv;
	}
}
