package com.st.moim;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.st.frame.DAO;
import com.st.frame.Join;
import com.st.frame.Search;
import com.st.frame.UserMoim;
import com.st.mapper.JoinMapper;
import com.st.mapper.MoimMapper;
import com.st.mapper.SearchMapper;
import com.st.mapper.UserMoimMapper;

@Repository("mdao")
public class MoimDao implements DAO<String,Moim>,Search<String,Moim>, Join,UserMoim{

	@Resource(name="mmapper")
	MoimMapper mmapper;
	
	@Resource(name="smapper")
	SearchMapper smapper;
	
	@Resource(name="jmapper")
	JoinMapper jmapper;
	
	@Resource(name="ummapper")
	UserMoimMapper ummapper;
	
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
		mmapper.delete(v.getUserId());
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

	@Override
	public ArrayList<Moim> searchMyMoim(String t) throws Exception {
		return smapper.searchMyMoim(t);
	}

	@Override
	public ArrayList<Moim> searchJoinMoim(String t) throws Exception {
		return smapper.searchJoinMoim(t);
	}

	@Override
	public void join(Map<String, Object> map) throws Exception {
		jmapper.join(map);
	}

	@Override
	public void delete(String moimId) throws Exception {
		ummapper.delete(moimId);
	}

	@Override
	public void deleteUser(Map<String,String> map) throws Exception {
		ummapper.deleteUser(map);
	}


}
