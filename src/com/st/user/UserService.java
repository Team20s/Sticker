package com.st.user;

import java.util.ArrayList;

import javax.annotation.Resource;

import com.st.frame.DAO;
import com.st.frame.Service;

@org.springframework.stereotype.Service("uservice")
public class UserService implements Service<String, User>{

	@Resource(name="udao")
	DAO<String,User> dao;
	
	@Override
	public void register(User v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void modify(User v) throws Exception {
		dao.update(v);
	}

	@Override
	public void remove(User v) throws Exception {
		dao.delete(v);
	}

	@Override
	public User get(String t) throws Exception {
		return dao.select(t);
	}

	@Override
	public ArrayList<User> get() throws Exception {
		return dao.select();
	}

}
