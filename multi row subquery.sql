
-- multi row subquery 
select * from payment where amount in (select amount from payment 
where payment_id=3 or payment_id = 2);
select * from payment where amount not in (select amount from payment 
where payment_id=3 or payment_id = 2);
use sakila;
select * from payment where amount>=any (select amount from payment 
where payment_id=3 or payment_id = 2);

-- 0.99 , 5.99 me kisi se bhi chota 
select * from payment where amount<=any (select amount from payment 
where payment_id=3 or payment_id = 2);

select * from payment where amount<any (select amount from payment 
where payment_id=3 or payment_id = 2);

select * from payment where amount>all (select amount from payment 
where payment_id=3 or payment_id = 2);

select * from payment where amount<=all (select amount from payment 
where payment_id=3 or payment_id = 2);

select * from payment where amount<all 
(select amount from payment 
where payment_id=3 or payment_id = 2);

-- get all the payment information where the month of payment 
-- should be same
-- as of payment_id 2 or 3

-- ans 1 
select month(payment_date) from payment where payment_id = 2 or payment_id = 3;
select * from payment where month(payment_date) in 
(select month(payment_date) from payment where payment_id = 2 or payment_id = 3);
-- get all the payment information whose amount is larger than 
-- among all the amount of payment_id 2 to 8

select amount from payment where  payment_id between 2 and  8;
select * from payment where amount >all 
(select amount from payment where  payment_id between 2 and  8);

-- learning 
-- what are correlated subquery and how they are executed 
-- what are constraints in sql 