package com.st.frame;

import java.util.ArrayList;

public interface Service<T,V> {
	public void register(V v) throws Exception;
	public void modify(V v) throws Exception;
	public void remove(T t) throws Exception;
	public V get(T t) throws Exception;
	public ArrayList<V> get() throws Exception;
}