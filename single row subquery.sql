-- what is subquery?
-- subquery is a query within another query 
-- subquery ---> inner query , nested query ,
-- subquery is used to access data based on the conditions 

use sakila;
select * from payment;
select amount from payment where payment_id = 4;
-- () <= nested query
select * from payment where amount =
(select amount from payment where payment_id = 5);

-- get the payment id and amount where the amount is not = to the amount of 
-- payment id 23

select payment_id , amount from payment where payment_id = 23;
select payment_id , 
amount
from payment where amount<> (select  amount from payment 
where payment_id = 23);

-- get the payment_id , customer id , amount , payment date 
-- where the month of payment should be same as of payment id 6

select month(payment_date)
from payment where payment_id = 6;

select payment_id , customer_id , amount , payment_date 
from payment where month(Payment_date)= (select month(payment_date)
from payment where payment_id = 6);

-- get all column from payment table where the staff serving the customers 
-- should be same as of payment_id = 7
select staff_id from payment where payment_id = 7;
select * from payment where staff_id
 = (select staff_id from payment where payment_id = 7
);

-- get all the payment information where the amount 
-- is same as of the highest amount from the payment table
select max(amount) from payment;
select * from payment where amount=(select max(amount) from payment);

-- get the amount , the total no of payment done for each amount 
-- only for those payment whose amount is less than 
-- the amount of rental_id 1725

select amount from payment where rental_id = 1725;
select amount , count(payment_id) from payment 
where amount < (select amount from payment where rental_id = 1725)
group by amount;


-- get the month and the total amount spent only for those customer
-- whose month of payment is greater than customerid =1 and payment id = 3

select month(payment_date) from payment 
where customer_id = 1 and payment_id =3;
-- single row subquery (nested query => return 1 row only)
select month(payment_date) , sum(amount) from payment 
where month(payment_date) > (select month(payment_date) from payment 
where customer_id = 1 and payment_id =3) group by month(payment_date);

-- multi row subquery 
-- in ,any, all operator 