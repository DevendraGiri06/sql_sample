show tables;

select*from actor;

select actor_id,first_name from actor limit 5


-- challenge 
select*from customer;

select first_name,last_name,email from customer;
-- distinct
select*from film;

select distinct(release_year) from film;

select distinct(rating) from film;

-- count()
select*from payment;

select count(distinct(amount)) from payment;

-- where clause 
select*from customer
where first_name='Jared' and last_name='Smith';

select rental_rate from film
where rental_rate>4;

select distinct rental_rate from film

select*from film
where rental_rate>4 and replacement_cost<20;

select*from film
where rental_rate>4 and replacement_cost<20
and rating='R';

-- select only one column 
select title from film
where rental_rate>4 and replacement_cost<20
and rating='R';

-- not operater 
select title from film
where rating !='R';

-- challenge 
select email from customer
where first_name='Nancy' and last_name='Thomas';

select description from film
where title='Outlaw Hanky';


select phone from address
where address='259 Ipoh Drive';

-- order by 

select*from customer
order by first_name;

select*from customer
order by first_name desc;

select*from customer
order by store_id;

-- order by store_id only 
select store_id,first_name,last_name from customer
order by store_id;

-- order by store_id and name
select store_id,first_name,last_name from customer
order by store_id,first_name;

-- desc and asc 
select store_id,first_name,last_name from customer
order by store_id desc,first_name asc;

-- first_name and last_name 

select first_name,last_name from customer
order by store_id desc , first_name asc;

-- limit 

select*from payment
order by payment_date;

-- let me know most recent 5 row 

select*from payment
order by payment_date
limit 5;

select * from payment
where amount !=0.00
order by payment_date desc
limit 5;

-- challenge 
--    we want to reward pur first 10 paying customers
-- what are the customer id of the first 10 customers who created a payment
select*from customer;





\