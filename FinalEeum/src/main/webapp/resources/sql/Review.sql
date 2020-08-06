drop table review;
drop sequence rev_seq;

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
	rv_sum number null,
	rv_date date
);

-- on delete cascade : ������ ���� �ϸ� �� �������� �����ϴ� ��۵� �����˴ϴ�.
create sequence rev_seq;

DELETE BOARD
DELETE review
DROP TABLE review
drop sequence rev_seq;
