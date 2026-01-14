-- number -> int, decimal 
-- tinyint, smallint , mediumint, int ,bigint
-- 1 byte , 2 byte , 3 byte , 4 byte ,8 byte 
-- 1 byte = 8bit 2**8 = 256 (-128 to 127)
use regex1;
create table yash1(salary tinyint);
insert into yash1 values(127);
insert into yash1 values(128);

drop table yash2;
create table yash2 (salary float , price double);
insert into yash2 values(100.6781245 , '1450.458558822');
select * from yash2;


-- string values char vs varchar()
-- char----> fixed length/size character
-- varchar ---> variable length charaacter 

create table yash3 (name varchar(20) , gender char(10));
insert into yash3 values('tushar' , 'male') , ('aman' , 'male'),('ot' , 'female');
select * from yash3;
insert into  yash3 values('raj      ','male      ');
select *, length(name) , length(gender) from yash3;

select * from yash3;

-- ddl (data definition language)
-- create (table)

-- drop , truncate, alter
create table raj123(col int);

-- create a table using select (ctas)
create table actor_cp as 
select first_name as fname , last_name as lname from sakila.actor;
select * from actor_cp;

drop table actor_cp; -- table structure and data both are deleted 
select * from actor_cp;

create table actor_cp as 
select first_name as fname , last_name as lname from sakila.actor
where actor_id between 10 and 14;

select * from actor_cp;

-- alter table to add column in my key 
alter table actor_cp add column(salary int);

alter table actor_cp add constraint new_key primary key (fname); -- primary key added 
alter table actor_cp drop column lname; -- column drop 
desc actor_cp;

alter table actor_cp rename column salary to newsalary ; -- change column name

select * from actor_cp;

-- dml statement
-- insert 
-- update set col= values
set sql_safe_update = 0;


update actor_cp set new_salary = 500;
update actor_cp set new_salary = 800 where fname = "UMA";

select * from actor_cp;