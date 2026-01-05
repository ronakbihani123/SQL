-- case 
/* 
if(condition , true , false )
if(condition , true m if(condition , true ,if)


case 
    when condition| expression then output 
    when condition. then output 
end 
*/
select count(*) ,
case 
    when population = 0 then "No population"
    when population between 8000 and 70000 then "Med population"
    else "Condition is false"
    
end as "status" from world.country group by status;
-- kitni  countrys h jinki population 8000 se 70000 ke bicch me h
SELECT continent,
      sum(CASE
           WHEN continent = "North America" and population BETWEEN 8000 AND 70000 THEN 1
           WHEN continent = "Africa" and population BETWEEN 1000 AND 10000 THEN 1
           ELSE 0
		   END )
FROM country
group by continent ;

 /* north america population 
	""           100
    ""           300
    ""           1000
    ""           4000
    ""           220 
/*

                
