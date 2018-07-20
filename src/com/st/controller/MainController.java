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

	@Resource(name = "uservice")
	Service<String, User> service;

	@RequestMapping("/main.st")
	public String mm() {
		return "main"; // main.jsp
	}

	@RequestMapping("/login.st")
	public ModelAndView login() {
		// model
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("main", "user/login");
		return mv;
	}

	@RequestMapping("/loginimpl.st")
	public ModelAndView loginimpl(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String loginState = "0";
		
		// �ش� ID�� ������ ��û�Ͽ� User ������ �ִ��� Ȯ��
		// ���� �Ѵٸ� 
		// User������ PWD�� �Է� �� PWD�� �� �Ͽ� 
		// �α��� ó��
		//session�� "loginuser"�� ����.
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		
		User user = null;
		try {
			user = service.get(id);
			if(pwd.equals(user.getPwd())) {
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", user);
			}else {
				request.setAttribute("loginState", loginState);
				mv.addObject("main", "user/login");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("loginState", loginState);
			mv.addObject("main", "user/login");
		}
		
		return mv;
	}

	@RequestMapping("/logout.st")
	public ModelAndView logout(HttpServletRequest request) {
		HttpSession session = request.getSession();

		if (session != null) {
			session.invalidate();
		}

		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		return mv;
	}

	@RequestMapping("/register.st")
	public String register() {
		return "user/register";
	}

	@RequestMapping("/registerimpl.st")
	public ModelAndView registerimpl(User user) {
		//String birth = user.getYear()+user.getMonth()+user.getDay();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		try {
			System.out.println(user);
			service.register(user);
			mv.addObject("centerpage", "main");
		} catch (Exception e) {
			mv.addObject("main", "user/register");
			e.printStackTrace();
		}
		return mv;
	}

}
