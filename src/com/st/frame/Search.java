package com.st.frame;

import java.util.ArrayList;

public interface Search<T,V> {
	public ArrayList<V> search(T t) throws Exception;
}
