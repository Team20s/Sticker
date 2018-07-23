package com.st.moim;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.st.frame.DAO;
import com.st.frame.Search;
import com.st.mapper.MoimMapper;
import com.st.mapper.SearchMapper;

@Repository("mdao")
public class MoimDao implements DAO<String,Moim>,Search<String,Moim>{

	@Resource(name="mmapper")
	MoimMapper mmapper;
	
	@Resource(name="smapper")
	SearchMapper smapper;
	
	@Override
	public void insert(Moim v) throws Exception {
		System.out.println(v);
		mmapper.insert(v);
	}

	@Override
	public void update(Moim v) throws Exception {
		mmapper.update(v);
	}

	@Override
	public void delete(Moim v) throws Exception {
		mmapper.delete(v.getMoimId());
	}

	@Override
	public Moim select(String t) throws Exception {
		return mmapper.select(t);
	}

	@Override
	public ArrayList<Moim> select() throws Exception {
		return mmapper.selectall();
	}

	@Override
	public ArrayList<Moim> search(String t) throws Exception {
		return smapper.search(t);
	}

}
