use sakila;
show tables;
select * from payment;

select count(*) from payment where amount = 2.99;

select amount,count(*) from payment group by amount;

select * from payment;
select customer_id , sum(amount) from payment
group by customer_id;

-- need to find the total amount spent by each customer but the amount spend
-- should be greater than 3 

select customer_id , sum(amount) from payment
where amount > 3
group by customer_id;

select * from payment;

select customer_id , count(amount) from payment 
where month(payment_date) = 5
group by customer_id ; 

select * from payment;

-- need to find out the maximium amount of transaction , avg transaction 
-- amount and the total transaction amount done by 
-- each staff
select staff_id ,max(amount) , avg(amount) , sum(amount)
from payment group by staff_id ;

-- need to find out the maximium amount of transaction , avg transaction 
-- amount and the total transaction amount done by 
-- each staff which only for the even number of customer 

select staff_id ,max(amount) , avg(amount) , sum(amount)
from payment 
where customer_id %2=0 
group by staff_id ;

-- get the amount , the total transaction done for each amount 
-- only for the payments done through staff_id 1 and the total 
-- no of transaction should be greater than 30 

select amount , count(*)from payment where staff_id = 1
group by amount having count(*) >= 30;

-- find out total no of customer served  , avg amount , and the total amount spend in each month 
-- for staff id 1 or 2
-- ans 
select month(payment_date),count(customer_id) , avg(amount) , sum(amount) from payment 
where staff_id = 1 or staff_id = 2
group by month(payment_date) ;
-- find  each month of each year 
select year(payment_date),month(payment_date),staff_id,count(customer_id) , avg(amount) , sum(amount) from payment 
group by year(payment_date),month(payment_date) ,staff_id  ;

-- order by = sort the data 
select * from payment order by customer_id , amount;

-- er modeling 
-- in er modeling what are data model 
-- type of relationships in er model 