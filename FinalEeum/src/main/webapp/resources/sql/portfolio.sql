
--create table expert portfolio
DROP TABLE PORTFOLIO;

CREATE TABLE PORTFOLIO(
	PF_EXID VARCHAR2(40) NOT NULL,
	PF_LOC VARCHAR2(300),	-- 전문가 활동 지역
	PF_GRADE NUMBER NOT NULL,-- 회원 분류 : 0-디딤돌, 1-마루, 2-우주, 3-용마루
	PF_CATE NUMBER NOT NULL,-- 전문가 분야 : 0-청소, 1-방역, 2-수리
	PF_TIME VARCHAR2(100) NOT NULL,	-- 전문가 연락 가능 시간
	PF_DESC CLOB,	-- 경력 상세설명
	PF_LI CLOB,	-- 자격증 이미지 파일
	PF_OP CLOB,	-- 사업자번호 이미지 파일
	PF_INTRO VARCHAR2(300) NOT NULL,	-- 전문가 소개말
	PF_One VARCHAR2(100)	-- 전문가 한마디
);

ALTER TABLE PORTFOLIO
ADD CONSTRAINT PF_EXID FOREIGN KEY(PF_EXID)
REFERENCES EXPERT_TABLE(EXPERT_ID);

insert into PORTFOLIO
values('user5678', '서울시 동대문구 전농동', 0, 0, '09:00-18:00', '웅앵웅웅앵앵우ㅐ애ㅜ앨만', null, null, '피곤해 죽겠읍니다. ', '세상에서 가장 좋은 건? 집');

alter table PORTFOLIO add(PF_PROFILE VARCHAR2(4000));
alter table PORTFOLIO add(PF_SAVEPROFILE VARCHAR2(4000));

SELECT * FROM PORTFOLIO;