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
where e.expert_ID =  p.PF_EXID	and P.PF_CATE = 3

		select * from PORTFOLIO where PF_EXID = 'aaa'
	