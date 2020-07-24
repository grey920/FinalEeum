package com.kh.eeum.domain;

import org.springframework.web.multipart.MultipartFile;

public class QnA {
	
	

	private int 	QNA_INDEX;		//�۹�ȣ
	private String	QNA_TITLE;		//�� �ۼ���
	private String	QNA_WRITER;		//�� ��й�ȣ
	private String  QNA_REPORT;
	private String	QNE_CONTENT;	//�� ����
	private String	QNA_DATE;
	private String 	QNA_TYPE;
	private int QNA_TIMES;
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
	public String getQNA_REPORT() {
		return QNA_REPORT;
	}
	public void setQNA_REPORT(String qNA_REPORT) {
		QNA_REPORT = qNA_REPORT;
	}
	public String getQNE_CONTENT() {
		return QNE_CONTENT;
	}
	public void setQNE_CONTENT(String qNE_CONTENT) {
		QNE_CONTENT = qNE_CONTENT;
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

}
