package com.kh.eeum.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class QnA {
	private int QNA_INDEX;
	private String QNA_TITLE;
	private String QNA_WRITER;
	private String QNA_CONTENT;
	private String QNA_DATE;
	private String QNA_TYPE;
	private int QNA_TIMES;
	private String QNA_REPORT;
	private List<QnA> qnalist;
	public int getQNA_INDEX() {
		return QNA_INDEX;
	}
	public void setQNA_INDEX(int qNA_INDEX) {
		QNA_INDEX = qNA_INDEX;
	}
	public String getQNA_TITLE() {
		return QNA_TITLE;
	}
	public void setQNA_TITLE(String qNA_TITLE) {
		QNA_TITLE = qNA_TITLE;
	}
	public String getQNA_WRITER() {
		return QNA_WRITER;
	}
	public void setQNA_WRITER(String qNA_WRITER) {
		QNA_WRITER = qNA_WRITER;
	}
	public String getQNA_CONTENT() {
		return QNA_CONTENT;
	}
	public void setQNA_CONTENT(String qNA_CONTENT) {
		QNA_CONTENT = qNA_CONTENT;
	}
	public String getQNA_DATE() {
		return QNA_DATE;
	}
	public void setQNA_DATE(String qNA_DATE) {
		QNA_DATE = qNA_DATE;
	}
	public String getQNA_TYPE() {
		return QNA_TYPE;
	}
	public void setQNA_TYPE(String qNA_TYPE) {
		QNA_TYPE = qNA_TYPE;
	}
	public int getQNA_TIMES() {
		return QNA_TIMES;
	}
	public void setQNA_TIMES(int qNA_TIMES) {
		QNA_TIMES = qNA_TIMES;
	}
	public String getQNA_REPORT() {
		return QNA_REPORT;
	}
	public void setQNA_REPORT(String qNA_REPORT) {
		QNA_REPORT = qNA_REPORT;
	}
	public List<QnA> getQnalist() {
		return qnalist;
	}
	public void setQnalist(List<QnA> qnalist) {
		this.qnalist = qnalist;
	}
	

}
