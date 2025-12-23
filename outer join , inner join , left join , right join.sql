CREATE DATABASE REGEX;
USE REGEX;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);



INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Eva', 'Phoenix'),
(6, 'Frank', 'Philadelphia'),
(7, 'Grace', 'San Antonio'),
(8, 'Henry', 'San Diego'),
(9, 'Ivy', 'Dallas'),
(10, 'Jack', 'San Jose');


INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-05', 250.00),
(102, 2, '2024-01-06', 150.00),
(103, 3, '2024-01-07', 300.00),
(104, 1, '2024-01-10', 120.00),
(105, 5, '2024-01-12', 450.00),
(106, 6, '2024-01-15', 200.00),
(107, 2, '2024-01-18', 175.00),
(108, 8, '2024-01-20', 500.00),
(109, 11, '2024-01-22', 90.00),
(110, 12, '2024-01-25', 60.00);

select * from customers;
select * from orders;

select customers.customer_id , customers.customer_name ,
o.order_id , o.customer_id , o.amount from customers 
inner join orders as o 
on customers.customer_id  = o.customer_id;

-- inner join me common column milta h 
/* inner join me where nhi lgta h yha pe 
on lgta h*/


-- left outer join esa outer join jo left table ka sara data dega

select customers.customer_id , customers.customer_name , o.order_id , 
o.customer_id , o.amount from customers 
left join orders as o 
on customers.customer_id  = o.customer_id;

select customers.customer_id , customers.customer_name , o.order_id , 
o.customer_id , o.amount from customers 
right join orders as o 
on customers.customer_id  = o.customer_id;

-- non matching rows me null aata h

select customers.customer_id , customers.customer_name , o.order_id , 
o.customer_id , o.amount from customers 
natural join orders as o ;

alter table customers rename column customer_id to cid;
desc customers;

select customers.cid , customers.customer_name , o.order_id , 
o.customer_id , o.amount from customers 
natural join orders as o ;

SELECT c.customer_name,
       SUM(o.amount) AS total_amount
FROM customers as  c
JOIN orders as o
ON c.cid = o.customer_id
GROUP BY c.customer_name;

-- select actor_id ,actor_name , total no of movies actor he has worked and film_actor
use sakila;
select * from actor;
select * from film_actor;

select a.actor_id ,a.first_name, count(fa.film_id)
from actor as a
join film_actor as fa
where a.actor_id = fa.actor_id
group by a.actor_id , a.first_name;

-- what is normalization in sql , 1nf, 2nf , 3nf
-- partial dependency => non key attribute
-- super key candidate key 

-- what are outer join and self join 