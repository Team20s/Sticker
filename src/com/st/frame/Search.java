package com.st.frame;

import java.util.ArrayList;

public interface Search<T,V> {
	public ArrayList<V> search(T t) throws Exception;
	public ArrayList<V> searchMyMoim(T t) throws Exception;
	public ArrayList<V> searchJoinMoim(T t) throws Exception;
	public void joinInsert() throws Exception;
}
