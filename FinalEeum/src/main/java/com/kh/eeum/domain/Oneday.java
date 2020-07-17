//도메인 -> 예전 DTO 클래스
package com.kh.eeum.domain;

import org.springframework.web.multipart.MultipartFile;

public class Oneday {
	private int ONE_INDEX;						
	private String ONE_TITLE;
	private String ONE_LINE;
	private String WRITER_ID;			
	private String ONE_CONTENT;	
	private int ONE_SEAT;
	private int ONE_ACTUAL_SEAT;
	private int ONE_PRICE;
	private String SAVEFILE;				
	private String ORIGINALFILE;
	private String ONE_RDATE;
	private String ONE_PODATE;
	private String ONE_TYPE;
	private String ONE_LOCATE;
	private int ONE_READCOUNT;
	//qna_board_write.jsp에서 name 속성 확인하세요.
	//<input type="file" id="upfile" name="uploadfile"> 확인
	private MultipartFile uploadfile;
	public int getONE_INDEX() {
		return ONE_INDEX;
	}
	public void setONE_INDEX(int oNE_INDEX) {
		ONE_INDEX = oNE_INDEX;
	}
	public String getONE_TITLE() {
		return ONE_TITLE;
	}
	public void setONE_TITLE(String oNE_TITLE) {
		ONE_TITLE = oNE_TITLE;
	}
	public String getWRITER_ID() {
		return WRITER_ID;
	}
	public void setWRITER_ID(String wRITER_ID) {
		WRITER_ID = wRITER_ID;
	}
	public String getONE_CONTENT() {
		return ONE_CONTENT;
	}
	public void setONE_CONTENT(String oNE_CONTENT) {
		ONE_CONTENT = oNE_CONTENT;
	}
	public int getONE_SEAT() {
		return ONE_SEAT;
	}
	public void setONE_SEAT(int oNE_SEAT) {
		ONE_SEAT = oNE_SEAT;
	}
	public int getONE_ACTUAL_SEAT() {
		return ONE_ACTUAL_SEAT;
	}
	public void setONE_ACTUAL_SEAT(int oNE_ACTUAL_SEAT) {
		ONE_ACTUAL_SEAT = oNE_ACTUAL_SEAT;
	}
	public String getSAVEFILE() {
		return SAVEFILE;
	}
	public void setSAVEFILE(String sAVEFILE) {
		SAVEFILE = sAVEFILE;
	}
	public String getORIGINALFILE() {
		return ORIGINALFILE;
	}
	public void setORIGINALFILE(String oRIGINALFILE) {
		ORIGINALFILE = oRIGINALFILE;
	}
	public String getONE_PODATE() {
		return ONE_PODATE;
	}
	public void setONE_PODATE(String oNE_PODATE) {
		ONE_PODATE = oNE_PODATE;
	}
	public int getONE_READCOUNT() {
		return ONE_READCOUNT;
	}
	public void setONE_READCOUNT(int oNE_READCOUNT) {
		ONE_READCOUNT = oNE_READCOUNT;
	}
	public MultipartFile getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(MultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
	public int getONE_PRICE() {
		return ONE_PRICE;
	}
	public void setONE_PRICE(int oNE_PRICE) {
		ONE_PRICE = oNE_PRICE;
	}
	public String getONE_LINE() {
		return ONE_LINE;
	}
	public void setONE_LINE(String oNE_LINE) {
		ONE_LINE = oNE_LINE;
	}
	public String getONE_RDATE() {
		return ONE_RDATE.substring(0, 10);
	}
	public void setONE_RDATE(String oNE_RDATE) {
		ONE_RDATE = oNE_RDATE;
	}
	public String getONE_TYPE() {
		return ONE_TYPE;
	}
	public void setONE_TYPE(String oNE_TYPE) {
		ONE_TYPE = oNE_TYPE;
	}
	public String getONE_LOCATE() {
		return ONE_LOCATE;
	}
	public void setONE_LOCATE(String oNE_LOCATE) {
		ONE_LOCATE = oNE_LOCATE;
	}
	
}
