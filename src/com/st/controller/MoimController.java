package com.st.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.st.frame.Search;
import com.st.frame.Service;
import com.st.moim.Moim;
import com.st.util.FileSave;

@Controller
public class MoimController {
	@Resource(name="mservice")
	Service<String, Moim> service;
	
	@Resource(name="mservice")
	Search<String,Moim> search;
	
	@RequestMapping("/createmoim.st")
	public ModelAndView createmoim() {//move createmoim page
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","moim/create");
		return mv;
	}

	@RequestMapping("/createmoimimpl.st")
	public ModelAndView createmoimimpl(Moim moim,HttpServletRequest request) {//moim insert
		MultipartFile mp = moim.getMoimMultiImg();
		String moimImg= mp.getOriginalFilename();
		moim.setMoimImg(moimImg);
		
		//session id 가져오기
		HttpSession session = request.getSession();
		String userId = (String)session.getAttribute("userId");
		System.out.println(userId);
		moim.setUserId(userId);
		
		//경로 가져오기
		String path = session.getServletContext().getRealPath("/");
		path += "img\\";
		
		FileSave.save(path, mp, moimImg);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		
		try {
			
			service.register(moim);
			mv.addObject("centerpage","moim/createok");
		} catch (Exception e) {
			e.printStackTrace();
			//fail 이면 조건 줘서 alert 뛰우기
			mv.addObject("fail","fail");
			mv.addObject("centerpage","moim/center");
		}
		
		return mv;
	}
	
	@RequestMapping("/moimdetail.st")
	public ModelAndView moimdetail(HttpServletRequest request) {
		//select(id)로 하는데 moim id 넘겨줌
		
		String moimId = request.getParameter("id");
		
		Moim moim = null;
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		
		try {
			moim = service.get(moimId);
			mv.addObject("moimdetail",moim);
			mv.addObject("centerpage","moim/detail");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("centerpage","moim/detail");
		}
		
		return mv;
	}
	
	@RequestMapping("/moimlist.st")
	public ModelAndView moimlist(HttpServletRequest request) {
		//cmd 로 정보를 받아와서 c1,c2 구분 후 리스트 출력 해줘야함.
		//mapper.xml에서는 select 구문 2개 나눠서 써야할듯.아니면 하나로 써서 파라미터로 넘겨줘서 조건 줘도 될듯.
		//session에 moimId를 저장해놓거나 hidden으로 detail로 정보를 보내기.
		
		//카테고리 구분을 위해 받았다.
		String cmd = request.getParameter("cmd");
		
		ArrayList<Moim> list = null;
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		
		try {
			list = search.search(cmd);
			
			mv.addObject("moimKind",cmd);
			mv.addObject("moimlist",list);
			mv.addObject("centerpage","moim/list");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("centerpage","moim/list");			
		}
		
		return mv;
	}
	
}
