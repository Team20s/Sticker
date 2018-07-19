package com.st.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.st.frame.Service;
import com.st.user.User;

@Controller
public class MoimController {
	
	@Resource(name="mservice")
	Service<String, User> service;
	
	@RequestMapping("/createmoim.st")
	public ModelAndView createmoim() {//move createmoim page
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","moim/create");
		return mv;
	}

	@RequestMapping("/createmoimimpl.st")
	public ModelAndView createmoimimpl() {//moim get method-select
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","moim/create");
		return mv;
	}
	
}
