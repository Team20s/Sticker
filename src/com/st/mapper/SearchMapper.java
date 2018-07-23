package com.st.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.st.moim.Moim;

@Repository("smapper")
public interface SearchMapper {
	public ArrayList<Moim> search(String id);
}