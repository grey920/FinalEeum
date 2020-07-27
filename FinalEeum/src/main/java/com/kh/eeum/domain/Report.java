package com.kh.eeum.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Report {
	private int REPORT_INDEX;
	private String REPORT_TITLE;
	private String REPORT_WRITER;
	private String REPORT_CONTENT;
	private String REPORT_DATE;
	private int REPORT_TYPE;
	private int REPORT_TIMES;
	private String REPORT_REPORT;
	private List<Report> reportlist;
	
	public int getREPORT_INDEX() {
		return REPORT_INDEX;
	}
	public void setREPORT_INDEX(int rEPORT_INDEX) {
		REPORT_INDEX = rEPORT_INDEX;
	}
	public String getREPORT_TITLE() {
		return REPORT_TITLE;
	}
	
	public void setREPORT_TITLE(String rEPORT_TITLE) {
		REPORT_TITLE = rEPORT_TITLE;
	}
	public String getREPORT_WRITER() {
		return REPORT_WRITER;
	}
	public void setREPORT_WRITER(String rEPORT_WRITER) {
		REPORT_WRITER = rEPORT_WRITER;
	}
	public String getREPORT_CONTENT() {
		return REPORT_CONTENT;
	}
	public void setREPORT_CONTENT(String rEPORT_CONTENT) {
		REPORT_CONTENT = rEPORT_CONTENT;
	}
	public String getREPORT_DATE() {
		return REPORT_DATE;
	}
	public void setREPORT_DATE(String rEPORT_DATE) {
		REPORT_DATE = rEPORT_DATE;
	}
	
	public int getREPORT_TYPE() {
		return REPORT_TYPE;
	}
	public void setREPORT_TYPE(int rEPORT_TYPE) {
		REPORT_TYPE = rEPORT_TYPE;
	}
	public int getREPORT_TIMES() {
		return REPORT_TIMES;
	}
	public void setREPORT_TIMES(int rEPORT_TIMES) {
		REPORT_TIMES = rEPORT_TIMES;
	}
	public String getREPORT_REPORT() {
		return REPORT_REPORT;
	}
	public void setREPORT_REPORT(String rEPORT_REPORT) {
		REPORT_REPORT = rEPORT_REPORT;
	}
	public List<Report> getReportlist() {
		return reportlist;
	}
	public void setReportlist(List<Report> reportlist) {
		this.reportlist = reportlist;
	}


	

}
