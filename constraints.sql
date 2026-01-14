-- TABLE
-- DDL  STATEMENT (DATA DEFINITION LANGUAGE)
-- CREATE , DROP , ALTER , TRUNCATE

-- STRUCTURE (DATA DEFINITION LANGUAGE)

CREATE DATABASE REGEX1;
USE REGEX1;
CREATE TABLE TEST1(SNO INT); -- TABLE CREATE (SNO COLUMN NAME)

describe test1;

-- dml (insert statement )

-- dml (insert , update , delete , merge)

insert into test1 values(10);
select * from test1;

insert into test1(sno) values(11);
insert into test1(sno) values(12) , (null) , (30); -- 3 row insert

select count(sno) , count(*) from test1;
-- jb hm count ke andr column ka name likhte h to vo null values ko count nhi krta h 

create table test2 (sno int not null , salary int);

insert into test2(sno, salary) values(20,1000);
select * from test2;
insert into test2(sno, salary) values(20,null);
insert into test2(sno, salary) values(null,1000); -- we have set constraint (error)

insert into test2(sno) values(1000);
insert into test2(salary) values(500000); -- error (because no null and no default set) 
select * from test2;

create table test3 (sno int not null default 80 , salary int );
insert into test3 (salary) values(1000);

insert into test3(sno)  values(5000);
select * from test3;

create table test4 (sno int not null , salary int unique default 100);

select * from test4;
insert into test4 (sno,salary) values(1000 , 20000);
insert into test4 (sno,salary) values(1001 , 20000); -- error duplicate values

insert into test4(sno) values(600);
select * from test4;
insert into test4(sno) values(100); -- error 100 is a value already in table

insert into test4 (sno , salary ) values(1001 , null);  -- multiple null values can be inserted
insert into test4 (sno , salary ) values(1001224 , null); -- error duplicate values
select * from test4;

-- check constraint
-- conditions
-- check col 
drop table test7;

create table test7 (sno int , salary int,
constraint regex_test7_sno_chk 
check (sno between 1 and 100),
constraint regex_test7_salary_chk 
check (salary in (1000,2000)));
select* from test7;

insert into test7 (sno ,salary) values(4,1000);
select * from test7;
insert into test7 (sno ,salary) values(150,1000); -- error
insert into test7 (sno ,salary) values(90,1500); -- error

-- create a table name as employee , employee_id primary key  , employee name varchar(20) , email column
-- with unique constraing , college with the default value , age with the condition
-- greater than 18 and the guardian should be a pallindrome 

create table employee (employee_id int  primary key , employee_name varchar (20),
email varchar(20) unique constraint regex_emloyee_email_check , college varchar(20) default 
'mgsu' , age int check (age >18) , guardian varchar(20) check (name = reverse(name) );