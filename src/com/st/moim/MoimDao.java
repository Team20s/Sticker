package com.st.moim;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.st.frame.DAO;
import com.st.mapper.MoimMapper;

@Repository("mdao")
public class MoimDao implements DAO<String,Moim>{

	@Resource(name="mmapper")
	MoimMapper mmapper;
	
	@Override
	public void insert(Moim v) throws Exception {
		mmapper.insertDetail(v);
		mmapper.insert(v);
	}

	@Override
	public void update(Moim v) throws Exception {
		mmapper.updateDetail(v);
		mmapper.update(v);
	}

	@Override
	public void delete(Moim v) throws Exception {
		mmapper.deleteDetail(v.getDetailId());
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

}
