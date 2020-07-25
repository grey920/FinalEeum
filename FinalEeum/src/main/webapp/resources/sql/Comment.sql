CREATE TABLE comments1(
	num number primary key,
	id varchar2(30) ,
	content varchar2(200),
	reg_date date,
	QNA_INDEX1 number
);


CONSTRAINT REPEX_EXID FOREIGN KEY(REPEX_EXID) REFERENCES EXPERT_TABLE(EXPERT_ID),

create sequence com1_seq;

select * from comments1
select * from qnaboard
DROP TABLE COMMENTS1