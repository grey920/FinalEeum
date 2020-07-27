--문의게시판 테이블(신고기능)
CREATE TABLE REPORTBOARD(
REPORT_INDEX NUMBER primary key,                                  	--문의 글 번호  
REPORT_TITLE VARCHAR2(100)NOT NULL,                           		--문의 글 제목
REPORT_WRITER VARCHAR2(40) NOT NULL,       											--문의 글 작성자 아이디
REPORT_REPORT   VARCHAR2(40) NOT NULL,                     			--신고하는 회원 아이디
REPORT_CONTENT CLOB NOT NULL,                                       --신고글 상세 내용
REPORT_DATE TIMESTAMP NOT NULL,                                 	--신고글 작성 날짜
REPORT_TYPE NUMBER DEFAULT 0,                              					--신고 대분류(0-기타, 1- 성적인 내용, 2-폭력적 또는 혐오스러운 내용, 3-증오 또는 악의적인 내용, 4-유해하거나 위험한 행위, 5-스팸 또는 오해의 소지가 있는 내용스
REPORT_TIMES NUMBER DEFAULT 0                                       --신고 누적 횟수, 기본 값 0
);

Delete from REPORTBOARD;
INSERT INTO REPORTBOARD
VALUES(report_seq.nextval, '신고합니다', 'user1234', 'user5678', '아 빨리 끝나라고요~', sysdate, 0,0);
INSERT INTO REPORTBOARD
VALUES(report_seq.nextval, '신고합니다','user5678', 'user1234', '신고 미친넘,,,', sysdate	, 0,0);
INSERT INTO REPORTBOARD
VALUES(report_seq.nextval, '신고합니다', 'admin1234', 'user5678', '아 빨리 끝나라고요~', sysdate, 0,0);

select * from REPORTBOARD

CREATE SEQUENCE report_seq
START WITH 1
INCREMENT BY 1
NOCYCLE;

drop sequence reportboard_seq;



drop table reportboard;
drop sequence reportboard_seq;

create sequence qnaboard_seq;

ALTER TABLE QNABOARD ADD(QNA_STATE NUMBER DEFAULT 0);

select * from
(select rownum rnum, b.*
		from
		(select * from REPORTOARD 
		order by REPORT_INDEX desc) b
		)
		where rnum >= 1 and rnum <= 10;	

