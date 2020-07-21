package com.kh.eeum.domain;

import org.springframework.web.multipart.MultipartFile;

public class Portfolio {
//	PF_EXID VARCHAR2(40) NOT NULL,
//	PF_LOC VARCHAR2(300),	-- 전문가 활동 지역
//	PF_GRADE NUMBER NOT NULL,-- 회원 분류 : 0-디딤돌, 1-마루, 2-우주, 3-용마루
//	PF_CATE NUMBER NOT NULL,-- 전문가 분야 : 0-청소, 1-방역, 2-수리
//	PF_TIME VARCHAR2(100) NOT NULL,	-- 전문가 연락 가능 시간
//	PF_DESC VARCHAR2(4000),	-- 경력 상세설명
//	PF_OR_LI VARCHAR2(100),
//	PF_SV_LI VARCHAR2(100),	-- 자격증 이미지 파일
//	PF_OR_OP VARCHAR2(100),	-- 사업자번호 이미지 파일
//	PF_SV_OP VARCHAR2(100),
//	PF_INTRO VARCHAR2(300) NOT NULL,	-- 전문가 소개말
//	PF_One VARCHAR2(100),	-- 전문가 한마디
//	PF_PROFILE VARCHAR2(4000) NOT NULL,
//	PF_SAVEPROFILE VARCHAR2(4000) NOT NULL
//	
	private String PF_EXID;
	private String PF_LOC;
	private int PF_GRADE;
	private int PF_CATE;
	private String PF_TIME;
	private String PF_DESC;
	private String PF_OR_LI;
	private String PF_SV_LI="/defaultPic.png";
	private String PF_OR_OP;
	private String PF_SV_OP="/defaultPic.png";
	private String PF_INTRO;
	private String PF_One;
	private String PF_PROFILE= "/profile.png";
	private String PF_SAVEPROFILE= "/profile.png";
	
	private MultipartFile uploadfilePRO;
	private MultipartFile uploadfile1;
	private MultipartFile uploadfile2;
	public String getPF_EXID() {
		return PF_EXID;
	}
	public void setPF_EXID(String pF_EXID) {
		PF_EXID = pF_EXID;
	}
	public String getPF_LOC() {
		return PF_LOC;
	}
	public void setPF_LOC(String pF_LOC) {
		PF_LOC = pF_LOC;
	}
	public int getPF_GRADE() {
		return PF_GRADE;
	}
	public void setPF_GRADE(int pF_GRADE) {
		PF_GRADE = pF_GRADE;
	}
	public int getPF_CATE() {
		return PF_CATE;
	}
	public void setPF_CATE(int pF_CATE) {
		PF_CATE = pF_CATE;
	}
	public String getPF_TIME() {
		return PF_TIME;
	}
	public void setPF_TIME(String pF_TIME) {
		PF_TIME = pF_TIME;
	}
	public String getPF_DESC() {
		return PF_DESC;
	}
	public void setPF_DESC(String pF_DESC) {
		PF_DESC = pF_DESC;
	}
	public String getPF_OR_LI() {
		return PF_OR_LI;
	}
	public void setPF_OR_LI(String pF_OR_LI) {
		PF_OR_LI = pF_OR_LI;
	}
	public String getPF_SV_LI() {
		return PF_SV_LI;
	}
	public void setPF_SV_LI(String pF_SV_LI) {
		PF_SV_LI = pF_SV_LI;
	}
	public String getPF_OR_OP() {
		return PF_OR_OP;
	}
	public void setPF_OR_OP(String pF_OR_OP) {
		PF_OR_OP = pF_OR_OP;
	}
	public String getPF_SV_OP() {
		return PF_SV_OP;
	}
	public void setPF_SV_OP(String pF_SV_OP) {
		PF_SV_OP = pF_SV_OP;
	}
	public String getPF_INTRO() {
		return PF_INTRO;
	}
	public void setPF_INTRO(String pF_INTRO) {
		PF_INTRO = pF_INTRO;
	}
	public String getPF_One() {
		return PF_One;
	}
	public void setPF_One(String pF_One) {
		PF_One = pF_One;
	}
	public String getPF_PROFILE() {
		return PF_PROFILE;
	}
	public void setPF_PROFILE(String pF_PROFILE) {
		PF_PROFILE = pF_PROFILE;
	}
	public String getPF_SAVEPROFILE() {
		return PF_SAVEPROFILE;
	}
	public void setPF_SAVEPROFILE(String pF_SAVEPROFILE) {
		PF_SAVEPROFILE = pF_SAVEPROFILE;
	}
	public MultipartFile getUploadfile1() {
		return uploadfile1;
	}
	public void setUploadfile1(MultipartFile uploadfile1) {
		this.uploadfile1 = uploadfile1;
	}
	public MultipartFile getUploadfile2() {
		return uploadfile2;
	}
	public void setUploadfile2(MultipartFile uploadfile2) {
		this.uploadfile2 = uploadfile2;
	}
	public MultipartFile getUploadfilePRO() {
		return uploadfilePRO;
	}
	public void setUploadfilePRO(MultipartFile uploadfilePRO) {
		this.uploadfilePRO = uploadfilePRO;
	}
	
	
	
}
