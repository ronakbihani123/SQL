-- comment   (SQL programming language)
-- Query krna 

-- to view the databases 
show databases;

-- to create a database to organise data
create database tata;
-- to utilize the database for which data will be stored
use tata;

-- to see tables 
show tables;

create table nexon( price int, color char(20) );

show tables;

use world;
show tables;
-- to see the column of table country
describe country; 
-- print
select * from country ;

-- to see the two columns
select name , region , population from country;

-- any order u can print column 
select name ,population  , region , population -500 from country;
-- case insensitve
SeLect name , population regION,
population -500 
       From country;
       
-- to filter we use where clause 
select * from country where continent = "Asia";

select * from country where indepyear = 1984;

-- learning 
-- what is database 
-- file system vs dbms 
-- dbms vs rdbms 
-- type of dbms and write a brief about it 

-- where clause 
use world ;

show tables;

select * from country;

select * from country where indepyear  = 1991;

select name , continent from country where indepyear = 1991;

