package com.st.frame;

import java.util.Map;

import com.st.moim.Moim;

public interface UserMoim {
	public void delete(String moimId) throws Exception;
	public void deleteUser(Map<String, String> obj) throws Exception;
	public void deleteMoim(Map<String, String> obj) throws Exception;
	public Moim checkJoin(Map<String, String> obj) throws Exception;
}
