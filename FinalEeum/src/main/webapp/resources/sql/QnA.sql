--문의게시판 테이블(신고기능)
CREATE TABLE QNABOARD(
QNA_INDEX NUMBER primary key,                                  --문의 글 번호  
QNA_TITLE VARCHAR2(100)NOT NULL,                           --문의 글 제목
QNA_WRITER VARCHAR2(40) NOT NULL,                        --문의 글 작성자 아이디
QNA_REPORT   VARCHAR2(40) NOT NULL,                     --신고하는 회원 아이디
QNE_CONTENT CLOB NOT NULL,                                       --신고글 상세 내용
QNA_DATE TIMESTAMP NOT NULL,                                 --신고글 작성 날짜
QNA_TYPE VARCHAR2(40) NOT NULL,                              --신고 대분류
QNA_TIMES NUMBER DEFAULT 0                                       --신고 누적 횟수, 기본 값 0
);



CREATE SEQUENCE qnaboard_seq
START WITH 1
INCREMENT BY 1
NOCYCLE;


drop table qnaboard;
drop sequence qnaboard_seq;

create sequence qnaboard_seq;

ALTER TABLE QNABOARD ADD(QNA_STATE NUMBER DEFAULT 0);

