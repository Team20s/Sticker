package com.st.user;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.st.frame.DAO;
import com.st.mapper.UserMapper;

@Repository("udao")
public class UserDao implements DAO<String, User>{
	
	@Resource(name="umapper")
	UserMapper mapper;

	@Override
	public void insert(User v) throws Exception {
		mapper.insert(v);
		
	}

	@Override
	public void update(User v) throws Exception {
		mapper.update(v);
		
	}

	@Override
	public void delete(User v) throws Exception {
		mapper.delete(v);
	}

	@Override
	public User select(String t) throws Exception {
		return mapper.select(t);
	}

	@Override
	public ArrayList<User> select() throws Exception {
		return mapper.selectall();
	}

}
