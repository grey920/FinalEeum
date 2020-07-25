CREATE TABLE MESSAGE (
MSG_NO NUMBER NOT NULL,							-- 메시지 고유 번호 
MSG_SID VARCHAR2(40) NOT NULL,					-- 메시지 보낸 사람 
MSG_RID VARCHAR2(40) NOT NULL,					-- 메시지 받은 사람 
MSG_CONTENT VARCHAR2(1000) NOT NULL,	-- 메시지 내용 (500자) 
MSG_TIME DATE,											-- 메시지 보낸 시간 
MSG_STATE NUMBER DEFAULT 0					-- 메시지 수신 상태 (0: 읽지 않음 , 1: 읽음) 
)

CREATE SEQUENCE MSG_SEQ
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE

select * from message
delete message