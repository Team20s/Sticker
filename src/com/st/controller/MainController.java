package com.st.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.st.frame.Search;
import com.st.frame.Service;
import com.st.moim.Moim;
import com.st.user.User;

@Controller
public class MainController {

	@Resource(name = "uservice")
	Service<String, User> service;
	
	@Resource(name="mservice")
	Search<String,Moim> search;

	@RequestMapping("/main.st")
	public ModelAndView mm() {
		//enjoy, study all list
		ArrayList<Moim> enjoyList = null;
		ArrayList<Moim> studyList = null;

		//enjoy, study 4개 항목만 넣기
		ArrayList<Moim> enjoyFour = new ArrayList<>();
		ArrayList<Moim> studyFour = new ArrayList<>();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		
		try {
			enjoyList = search.search("c1");
			studyList = search.search("c2");
			
			//최근 4개의 정보만 가져오게 하기 위함.
			if(enjoyList.size() >= 4) {
				for(int i=0;i<4;i++) {
					enjoyFour.add(enjoyList.get(i));
				}
			}
			
			if(studyList.size() >= 4) {
				for(int i=0;i<4;i++) {
					studyFour.add(studyList.get(i));
				}
			}
			
			mv.addObject("enjoyList",enjoyFour);
			mv.addObject("studyList",studyFour);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mv; // main.jsp
	}

	@RequestMapping("/login.st")
	public ModelAndView login() {
		// model
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "user/login");
		return mv;
	}

	@RequestMapping("/loginimpl.st")
	public String loginimpl(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String loginState = "0";

		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		User user = null;
		try {
			user = service.get(id);
			if (pwd.equals(user.getPwd())) {
				HttpSession session = request.getSession();
				session.setAttribute("userId", id);
				System.out.println("login success!");
				System.out.println("ID:" + id + "Pwd:" + pwd);
				return "redirect:/main.st"; 
			} else {
				request.setAttribute("loginState", loginState);
				mv.addObject("centerpage", "user/login");
				System.out.println("login failed...");
				System.out.println("ID:" + id + "Pwd:" + pwd + "loginState:" + loginState);
				return "redirect:/main.st"; 
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("loginState", loginState);
			return "redirect:/main.st"; 
		}
	}

	@RequestMapping("/logout.st")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();

		if (session != null) {
			session.invalidate();
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		return "redirect:/main.st"; 
	}

	@RequestMapping("/register.st")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage", "user/register");
		return mv;
	}

	@RequestMapping("/idCheck.st")
	@ResponseBody
	public void idCheck(String id,HttpServletResponse response) {
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = null;
		String cid = id;
		String result="";
		User user = null;
		System.out.println(cid);
		JSONObject jo = new JSONObject();
		try {
			out = response.getWriter();
			user = service.get(cid);
			if(cid == null) {
				cid="";
			}
			if(cid.equals(user.getId())){
				result="YES";
			} else {
				result="NO";
			}
			jo.put("result",result);
			out.print(jo.toJSONString());
		} catch (NullPointerException e) {
			result="NO";
			jo.put("result",result);
			out.print(jo.toJSONString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		out.close();
	}

	@RequestMapping("/registerimpl.st")
	public ModelAndView registerimpl(HttpServletRequest request, User user) {
		user.setBirth(user.getYear() + user.getMonth() + user.getDay());

		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		try {
			service.register(user);
			session.setAttribute("userid", user.getId());
			mv.addObject("centerpage", "user/login");

		} catch (Exception e) {
			mv.addObject("centerpage", "user/register");
			mv.addObject("regfail", "fail");
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/mypage.st")
	public ModelAndView mypage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("userId");
		String cmd = request.getParameter("cmd");
		System.out.println(cmd);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		ArrayList<Moim> list = null;
		User user = null;
		try {
			user = service.get(id);
			
			if(cmd.equals("my")) {
				list = search.searchMyMoim(id);
			}else if(cmd.equals("join")) {
				list = search.searchJoinMoim(id);
			}
			
			mv.addObject("check",cmd);
			mv.addObject("list",list);
			mv.addObject("user", user);
			mv.addObject("centerpage", "user/detail");
		} catch (Exception e) {
			mv.addObject("centerpage", "user/detail");
			e.printStackTrace();
		}
		return mv;
	}

}
