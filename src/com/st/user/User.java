package com.st.user;

import java.util.ArrayList;

import com.st.moim.Moim;

public class User {
	
	private String id;
	private String pwd;
	private String name;
	private String year;
	private String month;
	private String day;
	private String userStatus;
	ArrayList<Moim> moim;
	
		
	public User() {
	}

	

	public User(String id, String pwd, String name, String year, String month, String day, String userStatus) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.year = year;
		this.month = month;
		this.day = day;
		this.userStatus = userStatus;
	}


	public User(String id, String pwd, String name, String year, String month, String day, String userStatus,
			ArrayList<Moim> moim) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.year = year;
		this.month = month;
		this.day = day;
		this.userStatus = userStatus;
		this.moim = moim;
	}


	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getYear() {
		return year;
	}



	public void setYear(String year) {
		this.year = year;
	}



	public String getMonth() {
		return month;
	}



	public void setMonth(String month) {
		this.month = month;
	}



	public String getDay() {
		return day;
	}



	public void setDay(String day) {
		this.day = day;
	}



	public String getUserStatus() {
		return userStatus;
	}



	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}



	public ArrayList<Moim> getMoim() {
		return moim;
	}



	public void setMoim(ArrayList<Moim> moim) {
		this.moim = moim;
	}



	@Override
	public String toString() {
		return "User [id=" + id + ", pwd=" + pwd + ", name=" + name + ", year=" + year + ", month=" + month + ", day="
				+ day + ", userStatus=" + userStatus + ", moim=" + moim + "]";
	}

	
}
