package com.st.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.st.moim.Moim;

@Repository("mmapper")
public interface MoimMapper {
	public void insert(Moim obj);
	public void delete(String obj);
	public void update(Moim obj);
	public void insertDetail(Moim obj);
	public void deleteDetail(String obj);
	public void updateDetail(Moim obj);
	public Moim select(String obj);
	public ArrayList<Moim> selectall();
}
