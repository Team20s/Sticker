package com.st.moim;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Moim {
	private String moimId;
	private String moimImg;
	private String title;
	private String sDate;
	private String eDate;
	private String sTime;
	private String eTime;
	private Date regDate;
	private String applySDate;
	private String applyEDate;
	private String applySTime;
	private String applyETime;
	private String place;
	private String categoryId;
	private String userId;
	private String categoryKind;
	private String detailId;
	private String content;
	private String detailImg1;
	private String detailImg2;
	private String detailImg3;
	private String detailImg4;
	private String detailImg5;
	private MultipartFile moimMultiImg;
	private MultipartFile img1;
	private MultipartFile img2;
	private MultipartFile img3;
	private MultipartFile img4;
	private MultipartFile img5;
	
	public Moim() {
		super();
	}

	public Moim(String moimId, String moimImg, String title, String sDate, String eDate, String sTime, String eTime,
			Date regDate, String applySDate, String applyEDate, String applySTime, String applyETime, String place,
			String categoryId, String userId, String categoryKind, String detailId, String content, String detailImg1,
			String detailImg2, String detailImg3, String detailImg4, String detailImg5) {
		super();
		this.moimId = moimId;
		this.moimImg = moimImg;
		this.title = title;
		this.sDate = sDate;
		this.eDate = eDate;
		this.sTime = sTime;
		this.eTime = eTime;
		this.regDate = regDate;
		this.applySDate = applySDate;
		this.applyEDate = applyEDate;
		this.applySTime = applySTime;
		this.applyETime = applyETime;
		this.place = place;
		this.categoryId = categoryId;
		this.userId = userId;
		this.categoryKind = categoryKind;
		this.detailId = detailId;
		this.content = content;
		this.detailImg1 = detailImg1;
		this.detailImg2 = detailImg2;
		this.detailImg3 = detailImg3;
		this.detailImg4 = detailImg4;
		this.detailImg5 = detailImg5;
	}

	public String getMoimId() {
		return moimId;
	}

	public void setMoimId(String moimId) {
		this.moimId = moimId;
	}

	public String getMoimImg() {
		return moimImg;
	}

	public void setMoimImg(String moimImg) {
		this.moimImg = moimImg;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getsDate() {
		return sDate;
	}

	public void setsDate(String sDate) {
		this.sDate = sDate;
	}

	public String geteDate() {
		return eDate;
	}

	public void seteDate(String eDate) {
		this.eDate = eDate;
	}

	public String getsTime() {
		return sTime;
	}

	public void setsTime(String sTime) {
		this.sTime = sTime;
	}

	public String geteTime() {
		return eTime;
	}

	public void seteTime(String eTime) {
		this.eTime = eTime;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getApplySDate() {
		return applySDate;
	}

	public void setApplySDate(String applySDate) {
		this.applySDate = applySDate;
	}

	public String getApplyEDate() {
		return applyEDate;
	}

	public void setApplyEDate(String applyEDate) {
		this.applyEDate = applyEDate;
	}

	public String getApplySTime() {
		return applySTime;
	}

	public void setApplySTime(String applySTime) {
		this.applySTime = applySTime;
	}

	public String getApplyETime() {
		return applyETime;
	}

	public void setApplyETime(String applyETime) {
		this.applyETime = applyETime;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCategoryKind() {
		return categoryKind;
	}

	public void setCategoryKind(String categoryKind) {
		this.categoryKind = categoryKind;
	}

	public String getDetailId() {
		return detailId;
	}

	public void setDetailId(String detailId) {
		this.detailId = detailId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDetailImg1() {
		return detailImg1;
	}

	public void setDetailImg1(String detailImg1) {
		this.detailImg1 = detailImg1;
	}

	public String getDetailImg2() {
		return detailImg2;
	}

	public void setDetailImg2(String detailImg2) {
		this.detailImg2 = detailImg2;
	}

	public String getDetailImg3() {
		return detailImg3;
	}

	public void setDetailImg3(String detailImg3) {
		this.detailImg3 = detailImg3;
	}

	public String getDetailImg4() {
		return detailImg4;
	}

	public void setDetailImg4(String detailImg4) {
		this.detailImg4 = detailImg4;
	}

	public String getDetailImg5() {
		return detailImg5;
	}

	public void setDetailImg5(String detailImg5) {
		this.detailImg5 = detailImg5;
	}

	public MultipartFile getMoimMultiImg() {
		return moimMultiImg;
	}

	public void setMoimMultiImg(MultipartFile mImg) {
		this.moimMultiImg = mImg;
	}

	public MultipartFile getImg1() {
		return img1;
	}

	public void setImg1(MultipartFile img1) {
		this.img1 = img1;
	}

	public MultipartFile getImg2() {
		return img2;
	}

	public void setImg2(MultipartFile img2) {
		this.img2 = img2;
	}

	public MultipartFile getImg3() {
		return img3;
	}

	public void setImg3(MultipartFile img3) {
		this.img3 = img3;
	}

	public MultipartFile getImg4() {
		return img4;
	}

	public void setImg4(MultipartFile img4) {
		this.img4 = img4;
	}

	public MultipartFile getImg5() {
		return img5;
	}

	public void setImg5(MultipartFile img5) {
		this.img5 = img5;
	}

	@Override
	public String toString() {
		return "Moim [moimId=" + moimId + ", moimImg=" + moimImg + ", title=" + title + ", sDate=" + sDate + ", eDate="
				+ eDate + ", sTime=" + sTime + ", eTime=" + eTime + ", regDate=" + regDate + ", applySDate="
				+ applySDate + ", applyEDate=" + applyEDate + ", applySTime=" + applySTime + ", applyETime="
				+ applyETime + ", place=" + place + ", categoryId=" + categoryId + ", userId=" + userId
				+ ", categoryKind=" + categoryKind + ", detailId=" + detailId + ", content=" + content + ", detailImg1="
				+ detailImg1 + ", detailImg2=" + detailImg2 + ", detailImg3=" + detailImg3 + ", detailImg4="
				+ detailImg4 + ", detailImg5=" + detailImg5 + ", mImg=" + moimMultiImg + ", img1=" + img1 + ", img2=" + img2
				+ ", img3=" + img3 + ", img4=" + img4 + ", img5=" + img5 + "]";
	}
	
}
