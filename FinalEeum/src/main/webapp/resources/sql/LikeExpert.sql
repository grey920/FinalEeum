create table like_expert(
likeno number primary key,
like_user_id varchar2(40),
like_expert_id varchar2(40),
like_state number
)


create sequence like_sequence
start with 1
increment by 1

drop sequence like_sequence;
drop table like_expert;

delete 

SELECT * FROM LIKE_EXPERT;