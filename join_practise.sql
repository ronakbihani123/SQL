use sakila;
select * from actor;  -- actor_id * (pk)

select * from film_actor; -- actor_id (fk)

select count(actor_id) , count(distinct actor_id) from film_actor;

select count(film_id) , count(distinct film_id) from film_actor;

select a.first_name , a.actor_id from actor as a 
join film_actor as fa
where a.actor_id = fa.actor_id;
desc film;
select * from film;  -- (film_id pk )
desc film_Actor;
select * from film_actor; 

-- jb 2 column ko ek sath primary key bnaya jata h usko composite key bolte h 
select fa.film_id , fa.actor_id , f.film_id , f.title from film_actor as fa
join film as f
where fa.film_id = f.film_id; 


select * from film;  -- film_id pk
select * from actor;    -- actor_id pk 
select * from film_actor;  -- actor_id , film_id fk , actor_id = fk 


-- what are inner joints , outer joints 
-- types of outer joints 
