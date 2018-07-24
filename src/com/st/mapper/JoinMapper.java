package com.st.mapper;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("jmapper")
public interface JoinMapper {
	public void join(Map<String, Object> obj);
}
