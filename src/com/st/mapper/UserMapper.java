package com.st.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.st.user.User;

@Repository("umapper")
public interface UserMapper {
	public void insert(User obj);
	public void delete(String obj);
	public void update(User obj);
	public User select(String obj);
	public ArrayList<User> selectall();
}
