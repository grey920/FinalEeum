package com.kh.eeum.domain;

import java.util.List;

public class Repu {
	private String QNA_REPORT;
	private List<QnA> qnalist;
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
