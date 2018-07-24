package com.st.moim;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.st.frame.DAO;
import com.st.frame.Join;
import com.st.frame.Search;
import com.st.frame.Service;

@org.springframework.stereotype.Service("mservice")
public class MoimService implements Service<String,Moim>, Search<String,Moim>, Join{

	@Resource(name="mdao")
	DAO<String,Moim> mdao;
	
	@Resource(name="mdao")
	Search<String,Moim> search;
	
	@Resource(name="mdao")
	Join join;
	
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

	@Override
	public ArrayList<Moim> searchMyMoim(String t) throws Exception {
		return search.searchMyMoim(t);
	}

	@Override
	public ArrayList<Moim> searchJoinMoim(String t) throws Exception {
		return search.searchJoinMoim(t);
	}

	@Override
	public void join(Map<String, Object> map) throws Exception {
		join.join(map);
	}

}
