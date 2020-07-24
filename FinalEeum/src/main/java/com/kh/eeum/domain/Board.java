package com.kh.eeum.domain;

import org.springframework.web.multipart.MultipartFile;

public class Board {
	

	private int 	QNA_INDEX;		//�۹�ȣ
	private String	QNA_TITLE;		//�� �ۼ���
	private String	QNA_WRITER;		//�� ��й�ȣ
	private String	QNE_CONTENT;	//�� ����
	private String	QNA_DATE;
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
	public String getQNA_SAVEFILE() {
		return QNA_SAVEFILE;
	}
	public void setQNA_SAVEFILE(String qNA_SAVEFILE) {
		QNA_SAVEFILE = qNA_SAVEFILE;
	}
	public String getQNA_ORIGINALFILE() {
		return QNA_ORIGINALFILE;
	}
	public void setQNA_ORIGINALFILE(String qNA_ORIGINALFILE) {
		QNA_ORIGINALFILE = qNA_ORIGINALFILE;
	}
	public String getQNA_TYPE() {
		return QNA_TYPE;
	}
	public void setQNA_TYPE(String qNA_TYPE) {
		QNA_TYPE = qNA_TYPE;
	}
	private String	QNA_SAVEFILE;	//�� ����
	private String	QNA_ORIGINALFILE;		//÷�ε� ������ �̸�
	private String 	QNA_TYPE;
	private MultipartFile uploadfile;
	public MultipartFile getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(MultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
}
