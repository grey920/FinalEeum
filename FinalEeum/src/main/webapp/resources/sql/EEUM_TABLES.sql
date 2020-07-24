--eeum 유저 생성
CREATE USER eeum IDENTIFIED BY 1234;

--DB계정 권한 부여
GRANT CREATE TABLE, CREATE SESSION, CREATE VIEW, CREATE SEQUENCE TO eeum;

--부여된 권한 확인하기
SELECT * FROM DBA_SYS_PRIVS;
WHERE GRANTEE='EEUM';

--테이블 생성 쿼리들
--USER TABLE
CREATE TABLE USER_TABLE(
	USER_PROFILE VARCHAR2(4000) NOT NULL,		--사용자 프로필 이미지
	USER_SAVEPROFILE	 VARCHAR2(4000) NOT NULL,	--DB에 들어가는 사용자 프로필 이미지
	USER_JUMIN1 VARCHAR2(10) NOT NULL,		--사용자 주민번호 앞자리
	USER_JUMIN2 VARCHAR2(60) NOT NULL,		--사용자 주민번호 뒷자리(암호화됨)
	USER_NAME VARCHAR2(50) NOT NULL,		--사용자 이름
	USER_NICK VARCHAR2(50) NOT NULL,			--사용자 별명
	USER_ID 	VARCHAR2(40) PRIMARY KEY NOT NULL,	--사용자 아이디
	USER_PASS VARCHAR2(100) NOT NULL,		--사용자 비밀번호
	USER_ADDR1 VARCHAR2(10) NOT NULL,		--사용자 우편번호
	USER_ADDR2 VARCHAR2(300) NOT NULL,		--사용자 도로명 주소
	USER_ADDR3 VARCHAR2(300) NOT NULL,		--사용자 상세주소
	USER_PHONE1 VARCHAR2(3) NOT NULL,		--사용자 연락처 첫번째자리
	USER_PHONE2 VARCHAR2(4) NOT NULL,		--사용자 연락처 두번째자리
	USER_PHONE3 VARCHAR2(4) NOT NULL,		--사용자 연락처 마지막자리
	USER_EAMIL1 VARCHAR2(50) NOT NULL,		--사용자 이메일 주소 @앞자리
	USER_EMAIL2 VARCHAR2(50) NOT NULL,		--사용자 이메일 주소 @뒷자리
	USER_STATE NUMBER DEFAULT 0,			--사용자 상태 0이 가입
	JOINDATE TIMESTAMP DEFAULT SYSDATE		--사용자 가입날짜 기본값 시스템 날짜
);

--EXPERT TABLE
CREATE TABLE EXPERT_TABLE(
	EXPERT_JUMIN1 VARCHAR2(10) NOT NULL,		--전문가 주민번호 앞자리
	EXPERT_JUMIN2 VARCHAR2(60) NOT NULL,		--전문가 주민번호 뒷자리(암호화됨)
	EXPERT_NAME VARCHAR2(40) NOT NULL, 		--전문가 이름
	EXPERT_ID VARCHAR2(40) NOT NULL PRIMARY KEY,	--전문가 아이디
	EXPERT_PASS VARCHAR2(100) NOT NULL,		--전문가 비밀번호(암호화됨)
	EXPERT_PHONE1 VARCHAR2(3) NOT NULL,		--전문가 연락처
	EXPERT_PHONE2 VARCHAR2(4) NOT NULL,		--전문가 연락처
	EXPERT_PHONE3 VARCHAR2(4) NOT NULL,		--전문가 연락처
	EXPERT_EMAIL1 VARCHAR2(50) NOT NULL,		--전문가 이메일 주소
	EXPERT_EMAIL2 VARCHAR2(50) NOT NULL,		--전문가 이메일 주소
	EXPERT_STATE NUMBER DEFAULT 0,			--전문가 상태 기본값 0	
	JOINDATE TIMESTAMP DEFAULT SYSDATE		--전문가 가입날짜 기본값 시스템 날짜	
);

--ONEDAY TABLE
CREATE TABLE ONEDAY(
	ONE_INDEX NUMBER NOT NULL,			--원데이 게시글 인덱스
	ONE_TITLE VARCHAR2(100) NOT NULL,		--게시글 제목
	ONE_LINE VARCHAR2(100) NOT NULL,			--게시글 한 줄 소개
	WRITER_ID VARCHAR2(40) NOT NULL,			--게시글 작성자 아이디
	ONE_CONTENT CLOB NOT NULL,			--게시글 상세 내용
	ONE_SEAT NUMBER NOT NULL,			--원데이 클래스 참여 가능 인원
	ONE_ACTUAL_SEAT NUMBER DEFAULT 0,		--실제 참여 가능 인원 수
	ONE_PRICE NUMBER NOT NULL,			--원데이 클래스 가격
	SAVEFILE VARCHAR2(50), 				--DB에 들어가는 이미지 파일
	ORIGNALFILE VARCHAR2(50),			--실제 이미지 파일명
	ONE_READCOUNT NUMBER,				--조회수
	ONE_RDATE DATE NOT NULL,			--?	
	ONE_PODATE TIMESTAMP NOT NULL,			--게시글 작성날짜
	ONE_TYPE VARCHAR2(40) NOT NULL,			--원데이 클래스 진행중/마감 상태	
	ONE_LOCATE VARCHAR2(50) NOT NULL,		--원데이 클래스 진행 위치
	PRIMARY KEY(ONE_INDEX)	
);

--ONEDAY SEQUENCE
CREATE SEQUENCE ONEDAY_SEQ
START WITH 1,
INCREMENT BY 1;

CREATE TABLE APPLY(					
	AP_INDEX NUMBER NOT NULL PRIMARY KEY, 		-- 신청 No
	AP_ID VARCHAR2(40) NOT NULL ,			-- 신청인 아이디
	AP_RDATE TIMESTAMP NOT NULL,			-- 신청한 날짜
	AP_CINDEX NUMBER NOT NULL,			-- 신청한 클래스 No
	AP_TITLE VARCHAR2(100) NOT NULL,			-- 클래스 이름
	AP_LOCATE VARCHAR2(100) NOT NULL,		-- 클래스 장소
	AP_CDATE DATE NOT NULL,				-- 클래스 날짜
	AP_PROG NUMBER default 1,			-- 신청 상태 (1: 가신청, 2: 입금완료(신청완료), 0:취소)
	CONSTRAINT FK_APPLY_ID FOREIGN KEY(AP_ID) REFERENCES USER_TABLE(USER_ID),
	CONSTRAINT FK_APPLY_INDEX FOREIGN KEY(AP_CINDEX) REFERENCES ONEDAY(ONE_INDEX)
);
	
--BOARD TABLE
CREATE TABLE BOARD(					
	BOARD_NUM NUMBER,				--글 번호
	BOARD_NAME VARCHAR2(30),			--작성자
	BOARD_PASS VARCHAR2(30),			--비밀번호
	BOARD_SUBJECT VARCHAR2(300),			--제목
	BOARD_CONTENT VARCHAR2(4000),			--내용
	BOARD_FILE VARCHAR2(50),				--첨부될 파일 명(가공)
	BOARD_ORIGINAL VARCHAR2(50),			--첨부될 파일 명
	BOARD_RE_REF NUMBER,				--답변 글 작성시 참조되는 글의 번호
	BOARD_RE_LEV NUMBER,				--답변 글의 깊이
	BOARD_RE_SEQ NUMBER,				--답변 글의 순서
	BOARD_READCOUNT NUMBER,			--글의 조회수
	BOARD_DATE date,					--글의 작성 날짜
	PRIMARY KEY(BOARD_NUM)
);

--LikeExpert TABLE
create table like_expert(
	like_user_id varchar2(40),				--좋아요 누른 사용자 아이디
	like_expert_id varchar2(40),				--좋아요 눌린 전문가 아이디
	like_state number					-- 좋아요 상태
);

--LIKE SEQUENCE
create sequence like_sequence
start with 1
increment by 1

--PORTFOLIO
CREATE TABLE PORTFOLIO(
	PF_EXID VARCHAR2(40) NOT NULL,			--포트폴리오 작성자 아이디(전문가 아이디)
	PF_LOC VARCHAR2(300),				--전문가 활동 지역
	PF_GRADE NUMBER DEFAULT 0,			--회원 분류 : 0-디딤돌, 1-마루, 2-우주, 3-용마루
	PF_CATE NUMBER NOT NULL,			--전문가 분야 : 0-청소, 1-방역, 2-수리
	PF_TIME VARCHAR2(100) NOT NULL,			--전문가 연락 가능 시간
	PF_DESC CLOB,					--경력 상세설명
	PF_OR_LI VARCHAR2(100),				--자격증 이미지 파일
	PF_SV_LI VARCHAR2(100),				--자격증 이미지 파일(DB저장)
	PF_OR_OP VARCHAR2(100),				--사업자번호 이미지 파일
	PF_SV_OP VARCHAR2(100),				--사업자번호 이미지파일(DB저장)
	PF_INTRO CLOB NOT NULL,				--전문가 소개말
	PF_One VARCHAR2(100),				--전문가 한마디
	PF_PROFILE VARCHAR2(4000) NOT NULL,		--전문가 프로필 이미지 
	PF_SAVEPROFILE VARCHAR2(4000) NOT NULL,		--전문가 프로필 DB 저장 	
	CONSTRAINT PF_EXID FOREIGN KEY(PF_EXID) REFERENCES EXPERT_TABLE(EXPERT_ID)
);
alter table PORTFOLIO ADD PF_SV_OP VARCHAR2(100);
alter table PORTFOLIO ADD PF_SV_LI VARCHAR2(100);
--REQUEST

--REVIEW_BOARD
CREATE TABLE REVIEW_BOARD(
	RV_INDEX NUMBER NOT NULL PRIMARY KEY,		--후기 글 번호
	RV_UID VARCHAR2(40) NOT NULL,			--후기 작성자 아이디
	RV_EXID VARCHAR2(40) NOT NULL,			--전문가 아이디								
	RV_TITLE VARCHAR2(100) NOT NULL,			--후기 글 제목					
	RV_CON CLOB NOT NULL,				--후기 상세 내용											
	RV_STAR NUMBER(3,2) NOT NULL,			--후기 별점
	PODATE TIMESTAMP DEFAULT SYSDATE		--후기 글 작성날짜 기본값 시스템 날짜
	CONSTRAINT RV_UID FOREIGN KEY(RV_UID) REFERENCES USER_TABLE(USER_ID),
	CONSTRAINT RV_EXID FOREIGN KEY(RV_EXID) REFERENCES EXOERT_TABLE(EXPERT_ID)										
);

CREATE SEQUENCE RV_SEQ
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

--REVIEW TABLE
CREATE TABLE review(
	rv_no number primary key,
	rv_user_id varchar2(30),
	rv_expert_id varchar2(30),
	rv_content varchar2(900) not null,
	rv_rating1 number(2,1) not null,
	rv_rating2 number(2,1) not null,
	rv_rating3 number(2,1) not null,
	rv_rating4 number(2,1) not null,
	rv_rating5 number(2,1) not null,
	rv_rating6 number(2,1) not null,
	rv_date date,
	CONSTRAINT rv_user_id FOREIGN KEY(rv_user_id) REFERENCES REVIEW_BOARD(RV_UID),
	CONSTRAINT rv_exeprt_id FOREIGN KEY(rv_expert_id) REFERENCES REVIEW_BOARD(RV_EXID)
);

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
INCREMENT BY 1
NOCYCLE;



