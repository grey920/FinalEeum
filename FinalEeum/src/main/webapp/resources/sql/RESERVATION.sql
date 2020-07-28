CREATE TABLE RESERVATION (
rs_no NUMBER PRIMARY KEY,
rs_exid VARCHAR2(40) NOT NULL,					-- 예약된 전문가 
rs_uid VARCHAR2(40) NOT NULL,					-- 예약한 사용자
rs_date VARCHAR2(100),				-- 예약 날짜
rs_time VARCHAR2(40),					-- 예약 시간
rs_money VARCHAR2(100),			-- 예상 가격 
rs_state NUMBER DEFAULT 0,		-- 예약 상태 (0: 예약 신청, 1: 예약 확정(미입금); 2: 예약 확정(입금) 3:서비스 완료; 4:취소)
CONSTRAINT FK_RS_EXID FOREIGN KEY(rs_exid) REFERENCES EXPERT_TABLE(EXPERT_ID),
CONSTRAINT FK_RS_UID FOREIGN KEY(rs_uid) REFERENCES USER_TABLE(USER_ID)
);

delete REVIEW;
DROP sequence RS_SEQ

select * from reservation

select * from REVIEW;

CREATE sequence RS_SEQ;

