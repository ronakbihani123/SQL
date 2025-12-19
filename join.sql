select * from city;
-- city (id primary key , countrycode is the foreign key)
describe city;
select * from country;
-- code (pk)
select count(code) , count(distinct code) from country;
-- foreign key me duplicate values ho skti h 
-- primary key me unique values hoti h 

select c.id , c.name , c.countrycode,cnt.code , cnt.name ,
	cnt.continent  from city as c
	join 
	country as cnt 
	where c.countrycode = cnt.code;
 
-- find the city name , population , the country name along with the government form 
-- for each city 
select ct.name , ct.population , ctry.name , ctry.governmentform from city as ct
join 
country as ctry 
where ct.countrycode = ctry.code;

select * from countrylanguage;
-- get the country name , population , and the language spoken 
-- with the percentage of each language

select ctry.name , ctry.population , cl.language , cl.percentage from country as ctry 
join 
countrylanguage as  cl
where ctry.code = cl.CountryCode;
-- test upto group by tomorrow 