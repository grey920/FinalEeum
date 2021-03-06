
CREATE TABLE request(
   REQUEST_NO number  PRIMARY KEY NOT NULL ,
   EXPERT_ID VARCHAR2(40)  ,
   WRITER VARCHAR2(40) ,
   WRITER_TYPE VARCHAR2(40),
   BUILDING_TYPE VARCHAR2(100) ,
   BUILDING_TEXT VARCHAR2(2000),
   REPAIR_TYPE VARCHAR2(100),
   REPAIR_TEXT VARCHAR2(2000),
   SIMPLE_REQ_TEXT VARCHAR2(2000),
   REQUEST_DATE date
);

CREATE SEQUENCE request_seq start with 1 increment by 1 ;

drop table request

drop sequence request_seq

select * from request
select * from REQUEST_FILE


CREATE TABLE request_file(
	FILE_NO number  PRIMARY KEY NOT NULL,	
	REQUEST_NO number ,
	FILE_NAME VARCHAR2(40) ,		
	FILE_ORIGINAL VARCHAR2(100) ,
	FILE_THUMB_NAME VARCHAR2(100),	
	REQUEST_FILE_DATE date
);

CREATE SEQUENCE request_file_seq start with 1 increment by 1 ;
select *
		from request_file
		where request_no =13
