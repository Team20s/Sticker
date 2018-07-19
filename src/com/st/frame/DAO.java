package com.st.frame;

import java.util.ArrayList;

public interface DAO<T,V> {
	public void insert(V v) throws Exception;
	public void update(V v) throws Exception;
	public void delete(V v) throws Exception;
	public V select(T t) throws Exception;
	public ArrayList<V> select() throws Exception;
}