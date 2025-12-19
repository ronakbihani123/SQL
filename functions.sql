-- basic functions
-- functions 
-- case conversion 

select name , upper(name) , lower(name) from country;

select name , code , concat(name , "-",code) from country;
select name , code , concat_ws("$",name ,code) from country;
-- concat_ws ka mtlb h concatenate krna h with a separator 
-- concat me separator hmesha hum ko define krna pdta h
select name , code , concat(name , " ", code)  from country where concat(name , " ", code) = "Afghanistan AFG"  ;

select * from country;
-- q. mujhe country name , continent , region chahiye where continent in the region the continent name should be present 
select name , continent , region from
country where region like concat('%' , continent );

select * from country where name like region ;

-- get name , continent , population where first character of continent 
-- should be same as of country 
-- 1st character is same as of country 
select name ,  continent , left(name , 1) from country 
where left (continent,1)=left(name,1);


