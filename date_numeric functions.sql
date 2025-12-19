-- numeric  and date functions

select lifeexpectancy,round(lifeexpectancy) from country;

select 30.68 , round(30.647,2);
-- here 2 means second decimal value 
-- round => round of to nearest 10th 
-- 456..12
-- 6 is on ones place , 5 is on 10 place , 4 is on 100 place
-- round , truncate yh fir last ceil
select 6.0012 , round(5627.0172,2);

select 456.68 , round(457.68,-2) , truncate(3653.68,1);
-- truncate is just extract the value without round off 
-- round off phle round off krega and then btayega

select mod(10,3) , ceil(4.0000001) , floor(4.99999), pow(2,4);

-- date functions (now()==> current date and time
select now(),current_timestamp(),current_date(),current_time();

-- add date function ===> by default date add , (month , year, time)

select now() , adddate( now() , -2) , adddate( now()
, interval 2 year);

select now(), subdate(now() , 2);   -- it will subtract 2 days from current date

select now() , adddate( now() , -2) , adddate( now()
, interval 2 hour);

select now() , year(now());

select payment_date , adddate(payment_date,2) from sakila.payment;

select now() , year(now());

select now(), extract(week from now());

-- extract (year / month / hour / minutes /week)
select now() , extract(week from now() );

-- date_format=> extract but with a string (message)

select now() , extract(year from now()), date_format(now(),
"year is %y");

-- what are aggregate functions
 -- what are relationships in sql 
-- dbms , rdbms 