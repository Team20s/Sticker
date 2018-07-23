package com.st.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	@RequestMapping("/pwdupdateimpl.st")
	public ModelAndView pwdupdateimpl(HttpServletRequest request,User user) {
		//해당 ID user의 데이터를 검색해서
		//pwd를 변경하여 DB에 저장
		HttpSession session = request.getSession();
		String id =(String) session.getAttribute("userId");
		String newPwd = request.getParameter("pwd");
		user.setPwd(newPwd);
		user.setId(id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		try {
			service.modify(user);
			System.out.println(user.getPwd());
			user = service.get(id);
			mv.addObject("user",user);
			mv.addObject("centerpage", "user/detail");
		} catch (Exception e) {
			mv.addObject("centerpage", "user/detail");
			e.printStackTrace();
		}
		return mv;
	}

	
}
