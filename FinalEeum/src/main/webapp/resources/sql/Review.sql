drop table review;
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
	rv_date date
);

-- on delete cascade : ������ ���� �ϸ� �� �������� �����ϴ� ��۵� �����˴ϴ�.
create sequence rev_seq;

insert into comments values(1,'admin','���ƿ�','20200611',3);

DELETE BOARD
DELETE review
DROP TABLE review

SELECT * FROM review;

		select *
		from (select rownum
		rnum,rv_no,rv_user_id,rv_expert_id,rv_content,rv_rating,rv_date
			from (
				select rv_no, rv_user_id, rv_expert_id, rv_content, rv_rating, rv_date
				from review where rv_expert_id = 'aaa'
				order by rv_date desc
				)
			)
			where rnum between 1 and 10;


insert into review
values (rev_seq.nextval,'duswl0918','aaa','지대다',null,null);
-----------------------------------------------------
--board ���� page�� limit ���� ���� �����͸� ���ؿɴϴ�.
-- 1�ܰ�