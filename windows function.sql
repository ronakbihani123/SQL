use regex1;

drop table actor_cp;
create table actor_cp as 
select first_name as fname , last_name as last from sakila.actor where 
actor_id between 10 and 14;

select * from actor_cp;
update actor_cp set last="goyal" where fname="zero";

-- delete is a dml operation

-- delete from actor_cp;
select * from actor_cp;
truncate actor_cp;
-- in truncate we donot provide any condition but in delete we provide conditions
-- in truncate we can not revert (rollback) but delete we can rollback 
-- (in case if u have executed ddl statement once u can not roll back)

-- object means a structure which can use to manage store or refer the data

select * from sakila.actor;
select max(actor_id) from sakila.actor;
-- window function will apply the aggregate function to each row

-- window function is used to perform the calculation on the set of rows 
-- with reference to current row
-- there are 3 parts of windows function
-- 1. over-> to apply the function over a window (a set of row)
use world;
select * from country;
select code , name ,continent, population, (select sum(population) from country) from country;
select code , name ,continent, population,
sum(Population) over() , avg(population) over()from country;

-- 2. partition by ---> partition by is same as group by which is used to apply the logic into 
-- group 

select code , name ,continent, population,
sum(Population) over(partition by Continent) from country;

-- running sum  , cumulative sum
-- use order by 

select code , name ,continent, population,
sum(Population) over(order by population ) from country;

