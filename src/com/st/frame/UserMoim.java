package com.st.frame;

import java.util.Map;

public interface UserMoim {
	public void delete(String moimId) throws Exception;
	public void deleteUser(Map<String, String> obj) throws Exception;
}
