package com.st.controller;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.st.frame.Service;
import com.st.moim.Moim;
import com.st.util.FileSave;

@Controller
public class MoimController {
	
	@Resource(name="mservice")
	Service<String, Moim> service;
	
	@RequestMapping("/createmoim.st")
	public ModelAndView createmoim() {//move createmoim page
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","moim/createTest");
		return mv;
	}

	@RequestMapping("/createmoimimpl.st")
	public ModelAndView createmoimimpl(Moim moim) {//moim insert
		/*MultipartFile mp = moim.getmImg();
		String moimImg= mp.getOriginalFilename();
		moim.setMoimImg(moimImg);
		
		FileSave.save("C:\\springs\\Sticker\\web\\img\\", mp, moimImg);
		*/
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		
		try {
			//moim id = Session에 저장시킨 user id와 sequence로 합쳐서 만들자. 일단 테스트로 user 정보 임의로 넣어놓고 insert 할것. 테스트 완료 후 데이터 삭제.
			moim = new Moim("moim01","test.jpg","test",new Date(),new Date(),new Date(),new Date(),new Date(),"placeTest","c1","id01","ENJOY","detailId","content","detailImg1","detailImg2","detailImg3","detailImg4","detailImg5");
			
			service.register(moim);
			mv.addObject("centerpage","moim/createTest");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("centerpage","main");
		}
		
		return mv;
	}
	
	@RequestMapping("/moimdetail.st")
	public ModelAndView moimdetail() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","moim/detail");
		return mv;
	}
	
	@RequestMapping("/moimlist.st")
	public ModelAndView moimlist() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		mv.addObject("centerpage","moim/list");
		return mv;
	}
	
}
