drop table ONEDAY;
drop sequence ONEDAY_SEQ;

CREATE TABLE ONEDAY(					
ONE_INDEX NUMBER NOT NULL,	
ONE_TITLE VARCHAR2(100)NOT NULL,
ONE_LINE VARCHAR2(100) NOT NULL,
WRITER_ID VARCHAR2(40) NOT NULL,				
ONE_CONTENT CLOB NOT NULL,
ONE_SEAT NUMBER NOT NULL,
ONE_ACTUAL_SEAT NUMBER default 0,
ONE_PRICE NUMBER NOT NULL,
SAVEFILE VARCHAR2(50),					
ORIGINALFILE VARCHAR2(50),
ONE_READCOUNT NUMBER,	
ONE_RDATE DATE NOT NULL,
ONE_PODATE TIMESTAMP NOT NULL,									
ONE_TYPE VARCHAR2(40) NOT NULL,
ONE_LOCATE VARCHAR2(50) NOT NULL,
PRIMARY KEY(ONE_INDEX)
);

CREATE SEQUENCE ONEDAY_SEQ;

select * from ONEDAY;


	
	select to_char(sysdate, 'YYYY/MM/DD HH24:MI:SS') from dual;

	select * from 
		(select rownum rnum, b.*
		from
		(select * from board order by BOARD_RE_REF desc,
		BOARD_RE_SEQ asc) b
		)
		where rnum < =10 and rnum >= 1

--------------------------------------------------------------------
-- board에서 page와 limit값에 따른 데이터들 구해옵니다.
-- 1단계