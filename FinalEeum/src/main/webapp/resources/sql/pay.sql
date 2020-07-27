CREATE TABLE PAY(
P_INDEX NUMBER PRIMARY KEY,		-- PAY테이블 고유번호
P_CATE VARCHAR2(100),			-- 카테고리 (원데이 / 서비스)
P_UID VARCHAR2(40) NOT NULL,	-- 고객아이디
P_EXID VARCHAR2(40),
P_RS_NO NUMBER NOT NULL,		-- 서비스 예약 번호
P_PAYDATE DATE,				-- 결제일
P_PRICE	NUMBER,						-- 결제 가격
CONSTRAINT p_rsno_fk FOREIGN KEY(P_RS_NO) REFERENCES RESERVATION(RS_NO)
)

create sequence pay_seq;

----------
drop table pay;
drop sequence pay_seq;