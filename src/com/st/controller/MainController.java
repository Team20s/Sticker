package com.st.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.st.frame.Service;
import com.st.user.User;

@Controller
public class MainController {
	
	@Resource(name="uservice")
	Service<String, User> service;
	
	@RequestMapping("/main.hw")
	public String mm() {
		return "main"; //main.jsp를 의미
	}
	
	@RequestMapping("/login.hw")
	public ModelAndView login() {
		//model과 view를 같이 보내는 객체
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","login");
		return mv;
	}
	
	@RequestMapping("/loginimpl.hw")
	public ModelAndView loginimpl(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		
		if(id.equals("qq") && pwd.equals("11")) {			
			mv.addObject("centerpage","loginok");
			HttpSession session = request.getSession();
			session.setAttribute("loginid", id);
		}else {
			mv.addObject("centerpage","loginfail");			
		}
		return mv;
	}
	
	@RequestMapping("/logout.hw")
	public ModelAndView logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		if(session != null) {
			session.invalidate();
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","center");
		return mv;
	}
	
	@RequestMapping("/register.hw")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","register");
		return mv;
	}
	
	@RequestMapping("/registerimpl.hw")
	public ModelAndView registerimpl(User user) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		try {
			service.register(user);
			mv.addObject("centerpage","registerok");			
		} catch (Exception e) {
			mv.addObject("centerpage","registerfail");			
			e.printStackTrace();
		}		
		return mv;
	}
	
}
