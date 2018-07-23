package com.st.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.st.frame.Service;
import com.st.moim.Moim;
import com.st.user.User;

@Controller
public class UserController {

	@Resource(name = "uservice")
	Service<String, User> service;

	@RequestMapping("/userlist.st")
	public ModelAndView searchuser() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		ArrayList<User> list = null;
		try {
			list = (ArrayList<User>) service.get();
			for (User user : list) {
				System.out.println(user);
			}
			mv.addObject("userlist", list);
			mv.addObject("centerpage", "user/list");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/userdetail.st")
	public ModelAndView userdetail(HttpServletRequest request) {
		String userId = request.getParameter("id");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		User user = null;
		try {
			user = service.get(userId);
			mv.addObject("user",user);
			mv.addObject("centerpage","user/detail");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("centerpage","user/detail");
		}
		
		return mv;
	}
}
