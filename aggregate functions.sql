-- aggregate functions (multi line function)---=> will give you 
-- some result 

-- distinct ===> to find out unique values can be use for function or keyword 
-- distinct(continent) 
select distinct continent from country;

select distinct continent , region from country ;

-- aggregate funtion => to apply some calculation over set of rows
-- count(col) => only data present will be counted 
select count(indepyear) from country;
select count(*) from country;

select count(population), sum(population), avg(population) , min(population) ,
max(population) from country;

select count(continent) , count(distinct continent ) from country;

select * from country;
select count(indepyear) , count(*) from country where continent = "Asia";

-- q get the total country name ,total region along with the avg llifeexpectancy 
-- and the total population for the countries who has got the 
-- independence after  1947 and before 1998

select count(name) , count(region) , avg(lifeexpectancy),
sum(population) from country where IndepYear>1947
and IndepYear<1998;

-- q get total no of countries the unique regions along with 
-- the total population and the highest lifeexpectancy rate with 
-- the total capitals for the countries starting with the letter 
-- a and letter d

select count(name) ,count(distinct region), sum(population), 
max(lifeexpectancy) , sum(capital)
from country 
where name like "a%" or name like "d%";

-- q  asia (total country)
select count(name) from country where continent = "Asia";

select count(name) from country where continent = "Africa";

-- group by statement (similar value ko collect krna in a group)
-- then unke upr koi aggregate function chlana taki koi output mile 
-- jis bhi column pe aap group by krte ho vhi column aap select me print kr skte h 
-- dusra column print krna h to uss column pe aggregate function lga skte h 

select continent , count(name) from country group by continent;

-- q. find out the total countries and the total population 
-- for each indepyear
select count(name) , sum(population) , indepyear from country 
group by indepyear;