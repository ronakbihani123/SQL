select * from country;

select sum(population) from country;

select continent , count(name) from country group by continent;

-- q find out asia continent me kitni contryies h 

select count(name) from country where continent = "Asia" and 
indepyear > 1950;

select continent , count(name) from country where 
indepyear > 1950  group by continent;

-- find out only those continent where total no of countries is more than 30

select continent , count(name) from country  
group by continent having count(name) > 30;

-- where vs having 
-- where only filter the row 

-- where me sirf vhi data filter hoga jo data aapki
-- psycially table me present h 

-- kisi bhi aggregate function pe filter lagana h udhar havving lgta h 
-- group by hoga tbhi having lgega
-- aggregate function ke upr filter lgana h to having 
-- having group by ke baad lgta h 

-- find out in each continent what is the total 
-- population we have

select continent , sum(population)from country group by 
continent having sum(population) > 30401150;

 -- find out each year how many countries had been independent
 
 select indepyear , count(name) from country where 
 IndepYear>1930
 group by IndepYear;
 
 select indepyear , count(name) from country 
 group by IndepYear having count(name) > 2;
 
 -- get government form and the total no of countries
 -- for each government form where the total no of countries should be greater than 20
 
 -- get government form and the total no of countries
 -- where the country should have capital greater than 30 
 
 -- get the no of countries , regions with the total population
 -- where the lifeexpectancy should be greater than 38 
 -- and the population in each continent should be greater than 
 -- 300000
 
-- ans 1
select governmentForm , count(name) from country group by 
GovernmentForm having count(name) > 20;

-- ans2
select governmentForm , count(name) from country
where Capital> 30
group by GovernmentForm;

 -- ans 3 
 select count(name) ,count(region) , sum(population) , continent from country 
 where lifeexpectancy > 38  group by continent having sum(population) > 300000;
 