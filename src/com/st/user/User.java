package com.st.user;

import java.util.ArrayList;

import com.st.moim.Moim;

public class User {
	
	private String id;
	private String pwd;
	private String name;
	private String birth;
	private String userStatus;
	ArrayList<Moim> moim;
	
		
	public User() {
	}
	

	public User(String id, String pwd, String name, String birth, String userStatus) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.userStatus = userStatus;
	}


	public User(String id, String pwd, String name, String birth, String userStatus, ArrayList<Moim> moim) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
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



	public String getBirth() {
		return birth;
	}



	public void setBirth(String birth) {
		this.birth = birth;
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
		return "User [id=" + id + ", pwd=" + pwd + ", name=" + name + ", birth=" + birth + ", userStatus=" + userStatus
				+ ", moim=" + moim + "]";
	}

	
}
