package com.st.mapper;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("ummapper")
public interface UserMoimMapper {
	public void delete(String moimId);
	public void deleteUser(Map<String, String> obj);
}
