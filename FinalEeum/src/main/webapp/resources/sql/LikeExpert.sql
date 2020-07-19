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

select l.like_expert_id, e.expert_name, p.pf_saveprofile
from like_expert l inner join
		 expert_table e on l.like_expert_id = e.expert_id left outer join
		 PORTFOLIO p on l.like_expert_id = p.pf_exid
where l.like_user_id = 'admin' and l.like_expert_id = 'hansol302'
order by l.likeno desc