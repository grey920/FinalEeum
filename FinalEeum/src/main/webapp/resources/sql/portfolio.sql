
--create table expert portfolio
DROP TABLE PORTFOLIO;

CREATE TABLE PORTFOLIO(
	PF_EXID VARCHAR2(40) NOT NULL ,
	PF_LOC VARCHAR2(300),	-- 전문가 활동 지역
	PF_GRADE NUMBER DEFAULT 0,-- 회원 분류 : 0-디딤돌, 1-마루, 2-우주, 3-용마루
	PF_CATE NUMBER NOT NULL,-- 전문가 분야 : 0-청소, 1-방역, 2-수리
	PF_TIME VARCHAR2(100) NOT NULL,	-- 전문가 연락 가능 시간
	PF_DESC CLOB,	-- 경력 상세설명
	PF_OR_LI VARCHAR2(4000),
	PF_SV_LI VARCHAR2(4000),	-- 자격증 이미지 파일
	PF_OR_OP VARCHAR2(4000),	-- 사업자번호 이미지 파일
	PF_SV_OP VARCHAR2(4000),
	PF_INTRO VARCHAR2(4000)  NOT NULL,	-- 전문가 소개말
	PF_One VARCHAR2(100),	-- 전문가 한마디
	PF_PROFILE VARCHAR2(4000) NOT NULL,
	PF_SAVEPROFILE VARCHAR2(4000) NOT NULL,
	CONSTRAINT PF_EXID_FK FOREIGN KEY(PF_EXID) REFERENCES EXPERT_TABLE(EXPERT_ID)  
);



SELECT * FROM PORTFOLIO;
select * from PORTFOLIO
where PF_EXID = 'bbb';
DELETE PORTFOLIO;

	select * from
		( select rownum rnum, b.* from
		(select * from expert_table) b)
		where rnum &gt; = #{start} and rnum &lt; =
		#{end}
		
		
	select * from
		( select rownum rnum, b.* from
		
 (select *
 from PORTFOLIO) b)
		where rnum > = 1
 and rnum < =
		8;
