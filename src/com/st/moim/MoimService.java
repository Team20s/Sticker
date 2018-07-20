package com.st.moim;

import java.util.ArrayList;

import javax.annotation.Resource;

import com.st.frame.DAO;
import com.st.frame.Service;

@org.springframework.stereotype.Service("mservice")
public class MoimService implements Service<String,Moim>{

	@Resource(name="mdao")
	DAO<String,Moim> mdao;
	
	@Override
	public void register(Moim v) throws Exception {
		System.out.println(v);
		mdao.insert(v);
	}

	@Override
	public void modify(Moim v) throws Exception {
		mdao.update(v);
	}

	@Override
	public void remove(Moim v) throws Exception {
		mdao.delete(v);
	}

	@Override
	public Moim get(String t) throws Exception {
		return mdao.select(t);
	}

	@Override
	public ArrayList<Moim> get() throws Exception {
		return mdao.select();
	}

}
