CREATE TABLE EXPERT_TABLE (
EXPERT_JUMIN1 				VARCHAR2(10) NOT NULL,
EXPERT_JUMIN2 				VARCHAR2(60) NOT NULL,
EXPERT_NAME 				VARCHAR2(40) NOT NULL,
EXPERT_ID 						VARCHAR2(40) PRIMARY KEY NOT NULL,
EXPERT_PASS 					VARCHAR2(100) NOT NULL,
EXPERT_PHONE1 			VARCHAR2(3) NOT NULL,
EXPERT_PHONE2 			VARCHAR2(4) NOT NULL,
EXPERT_PHONE3 			VARCHAR2(4) NOT NULL,
EXPERT_EMAIL1				VARCHAR2(50) NOT NULL,
EXPERT_EMAIL2 				VARCHAR2(50) NOT NULL,
EXPERT_STATE 				NUMBER DEFAULT 0 -- 일반 / 일시중단 / 영구정지 
)


insert into	 EXPERT_TABLE values
('cat2.jpg','cat2.jpg','970918','2323233','안연지','hhh','1234','010','3375','6982','aaa','@gmail.com');

select * from EXPERT_TABLE

select * from EXPERT_TABLE
where expert_id = 'ccc';

delete from EXPERT_TABLE;

		select * from expert_table
		where expert_id = 'ccc';

select * from EXPERT_TABLE
drop table EXPERT_TABLE

SELECT * FROM EXPERT_TABLE,PORTFOLIO;

select * from
		( select rownum rnum, b.* from
		
select * from
		( select rownum rnum, b.* from
		
(select *
from expert_table) b)
where rnum > = 1 and rnum < =8

select *
from
	( select rownum rnum, b.* 
	  from 	(select E.* , P.PF_CATE
             from expert_table E,PORTFOLIO P
             where e.expert_ID =  p.PF_EXID	) 	
	 b)
	  
where rnum > = 1 and rnum < =8
		
		
		
select count(*)
from expert_table E,PORTFOLIO P
where e.expert_ID =  p.PF_EXID

		select * from PORTFOLIO where PF_EXID = 'aaa'
		
		INSERT INTO EEUM.PORTFOLIO
(PF_EXID, PF_LOC, PF_GRADE, PF_CATE, PF_TIME, PF_DESC, PF_OR_LI, PF_SV_LI, PF_OR_OP, PF_SV_OP, PF_INTRO, PF_ONE, PF_PROFILE, PF_SAVEPROFILE)
VALUES('3123123', '시/도 선택  ', 0, 3, '00,00', '이사입주청소
(싱크대상판연마코팅.욕실나노코팅.마루왁스코팅.찌든때.묵은때.물때.기름때.곰팡이. 스티커 제거 )
신축입주청소
( 화학성분 유해물질 미세먼지 제거 싱크대상판코팅.욕실나노코팅 )
', 'cat2.jpg', '/2020-7-20/eeum202072085637440.jpg', 'dog.jpg', '/2020-7-20/eeum202072092178640.jpg', '
[예시]한 개인의 평생을 걸친 직업 혹은 직무 관련 경험으로써 개인의 직업 발달과 그 과정을 가리키는 포괄적인 용어이다. 경력은 개인이 몰입하는 대상이 되는 특정 전문영역 또는 직종을 의미하는 동시에 개인이 직업생활을 영위하면서 겪게 되는 동일한 혹은 상이한 일의 경험, 일에 대한 전문성 또는 장기간 수행한 일의 과정 등을 모두 포괄하는 개념이다. [네이버 지식백과] 경력 [經歷, Career] (HRD 용어사전, 2010. 9. 6., (사)한국기업교육학회)', '사랑합니다. 고객님^^', 'cat2.jpg', '/2020-7-20/eeum202072067751239.jpg');

	