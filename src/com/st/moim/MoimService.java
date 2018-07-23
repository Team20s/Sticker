package com.st.moim;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.st.frame.DAO;
import com.st.frame.Search;
import com.st.frame.Service;

@org.springframework.stereotype.Service("mservice")
public class MoimService implements Service<String,Moim>, Search<String,Moim>{

	@Resource(name="mdao")
	DAO<String,Moim> mdao;
	
	@Resource(name="mdao")
	Search<String,Moim> search;
	
	@Override
	@Transactional
	public void register(Moim v) throws Exception {
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

	@Override
	public ArrayList<Moim> search(String t) throws Exception {
		return search.search(t);
	}
}
