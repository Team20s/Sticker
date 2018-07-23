package com.st.controller;

import java.util.ArrayList;

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
	public ModelAndView mm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		return mv; // main.jsp
	}

	@RequestMapping("/login.st")
	public ModelAndView login() {
		// model
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","user/login");
		return mv;
	}

	@RequestMapping("/loginimpl.st")
	public ModelAndView loginimpl(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String loginState = "0";

		// 해당 ID를 서버에 요청하여 User 정보가 있는지 확인
		// 존재 한다면
		// User정보의 PWD와 입력 한 PWD를 비교 하여
		// 로그인 처리, session에 login 정보를 넣음.
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		User user = null;
		try {
			user = service.get(id);
			if (pwd.equals(user.getPwd())) {
				mv.addObject("centerpage","center");
				HttpSession session = request.getSession();
				session.setAttribute("userId", id);
				System.out.println("로그인 성공!");
				System.out.println("ID:"+id+"Pwd:"+pwd);
			} else {
				request.setAttribute("loginState", loginState);
				mv.addObject("centerpage","user/login");
				System.out.println("로그인 실패!");
				System.out.println("ID:"+id+"Pwd:"+pwd+"loginState:"+loginState);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("loginState", loginState);
			mv.addObject("centerpage","user/login");
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
		mv.addObject("centerpage","center");
		return mv;
	}

	@RequestMapping("/register.st")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","user/register");
		return mv;
	}

	@RequestMapping("/registerimpl.st")
	public ModelAndView registerimpl(User user) {
		user.setBirth(user.getYear() + user.getMonth() + user.getDay());
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		try {
			System.out.println(user);
			service.register(user);
			mv.addObject("centerpage","user/login");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("centerpage","user/register");
		}
		return mv;
	}
	
	@RequestMapping("/mypage.st")
	public ModelAndView mypage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		ArrayList<User> list = null;
		try {
			list= (ArrayList<User>)service.get();
			mv.addObject("centerpage","user/detail");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

}
