package com.st.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.st.frame.Service;
import com.st.user.User;

@Controller
public class UserController {
	
	@Resource(name="uservice")
	Service<String, User> service;
	
	@RequestMapping("/userlist.hw")
	public ModelAndView searchuser() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		ArrayList<User> list = null;
		try {
			list= (ArrayList<User>)service.get();
			for(User user:list) {
				System.out.println(user);
			}
			mv.addObject("userlist", list);
			mv.addObject("centerpage","user/list");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/userdetail.st")
	public ModelAndView userdetail() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","user/detail");
		return mv;
	}
	
	
}
