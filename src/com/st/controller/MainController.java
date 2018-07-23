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
	public String mm() {
		return "main"; // main.jsp
	}

	@RequestMapping("/login.st")
	public String login() {
		// model
		return "user/login";
	}

	@RequestMapping("/loginimpl.st")
	public String loginimpl(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String loginState = "0";

		// �ش� ID�� ������ ��û�Ͽ� User ������ �ִ��� Ȯ��
		// ���� �Ѵٸ�
		// User������ PWD�� �Է� �� PWD�� �� �Ͽ�
		// �α��� ó��, session�� login ������ ����.
		User user = null;
		try {
			user = service.get(id);
			if (pwd.equals(user.getPwd())) {
				HttpSession session = request.getSession();
				session.setAttribute("userId", user.getId());
				System.out.println("�α��� ����!");
				System.out.println("ID:"+id+"Pwd:"+pwd+"loginState:"+loginState);
				return "main";
			} else {
				request.setAttribute("loginState", loginState);
				System.out.println("�α��� ����!");
				System.out.println("ID:"+id+"Pwd:"+pwd+"loginState:"+loginState);
				return "user/login";
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("loginState", loginState);
			return "user/login";
		}
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
	public String registerimpl(User user) {
		user.setBirth(user.getYear() + user.getMonth() + user.getDay());
		try {
			System.out.println(user);
			service.register(user);
			return "user/login";
		} catch (Exception e) {
			e.printStackTrace();
			return "user/register";
		}

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
