-- in me specifically set of value check hoti h
select * from country where continent in ("Africa" , 'Asia');

select * from country where indepyear in (1960 , 1991);

 select * from country where indepyear between 1960 and 1991;
 
 select * from country where indepyear not between 1960 and 1991;
 
select * from country where indepyear not in (1960 , 1991); 

-- between = specific range 
-- in = specific value 

-- 1. get the country name and the continent where the region is not south europe
-- 2. get the country name , continent , population along with 105 increment in the population 
-- 3 .get all the cpolumn where the life expectancy is either 75.1  or 77.8 or 63.7
-- 4. get the contry name , population , region where population should not be from 5000 to 300000

-- 1. select name , continent from country where region <> "Southern Europe";
-- 2. select name , continent , population , population*10/100 from country;
-- 3. select * from country where LifeExpectancy in (75.1, 77.8 , 63.7);
-- 4. select name , population , region from country where population not between 5000 and 300000;

-- like operator 
-- match a pattern 
-- name --> letter start , letter include , letter end 
-- % : special character / wildcard character 
-- % : zero or more character 
-- _(undersccore) : only 1 character
-- 'A'
select * from country where name like '%ru%';
select * from country where name not like '%ru%';

select * from country where name like "Ir%";

select * from country where name like "Ira_";

select * from country where name like "____";

select * from country where name like "_u__";

select * from country where name like "_u%";

select * from country where name like "_u_%";

select * from country where name like "_ua%";
select * from country where name like "_u__";

-- get the country name and the continent where the continent start with the lteter n 
-- get the name and continent where the second last letter is p 
-- get the contry and the continent where the continent have minimum 4 character 
-- get name and continent where the second letter is a and last second letter is a from region column 
-- get name and continent where the thirt letter is a and last second letter is sia from region column   
-- get name and region where the continent is north america or south america

-- 1.select name , continent from country where continent like "n%";
-- 2.select name , continent from country where continent like "%p_"; 
-- 3.select name , continent from country where continent like "____%";
-- 4.select name , continent from country where region like "_a%a_";
select name , continent from country where region like "__c%sia";
select name , region  from country where continent in ("North America" , "South America");