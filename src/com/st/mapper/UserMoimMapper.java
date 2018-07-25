package com.st.mapper;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.st.moim.Moim;

@Repository("ummapper")
public interface UserMoimMapper {
	public void delete(String moimId);
	public void deleteUser(Map<String, String> obj);
	public void deleteMoim(Map<String, String> obj);
	public Moim checkJoin(Map<String, String> obj);
}
