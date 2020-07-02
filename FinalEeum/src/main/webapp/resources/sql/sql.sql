create sequence test_seq;

create table test (
seq number not null,
name varchar2(20) not null, 
mess varchar2(300)  not null,
reg_date timestamp(6) not null
);

select * from test;

drop table test;
drop sequence test_seq;