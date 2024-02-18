-- joins
select*from payment
inner join customer
on payment.customer_id = customer.customer_id
limit 2;

-- 1 inner join
select customer.customer_id,payment.customer_id,first_name
from payment
inner join customer
on payment.customer_id = customer.customer_id
limit 5;

-- 2 outer join

select*from customer
full outer join payment
on customer.customer_id =payment.customer_id;

select*from customer
full outer join payment
on customer.customer_id = payment.customer_id
where customer.customer_id is null
or payment.payment_id is  null;


select count(distinct customer_id) from customer;

-- 3 left outer join

select*from customer 
left join payment
on customer.customer_id = payment.customer_id
where payment.customer_id is  null;

-- another table

select film.film_id,title,inventory_id from film 
left join inventory 
on inventory.film_id = film.film_id
where inventory.film_id is null;

-- Right join 
select*from film 
right join inventory
on inventory.film_id = film.film_id
where film.film_id is null

-- challenge 

select district,email from customer
inner join address
on address.address_id=customer.address_id
where district='California'

-- multiple joins 
select title,first_name,last_name from actor
inner join film_actor
on actor.actor_id = film_actor.actor_id
inner join film
on film_actor.film_id=film.film_id
where first_name='Nick' and last_name='Wahlberg';

-- advanced SQL 

-- Time - Contain only time
-- Date - Contain Only Date
-- Timestamp - contain data and time
-- Timestamptz - contain date, time and timezone

show all

show timezone

select now()

select timeofday();

select current_date;


-- string function 

select length(first_name) from customer;

select*from customer;

-- we want to add col 
select first_name || ' '||last_name as full_name from customer;

-- if want  - 
select first_name || '-'||last_name as full_name from customer;

select concat(first_name,' ', last_name) as full_name
from customer;

-- if we want first_name upper case
select upper(first_name) from customer;


-- if add in last '@gmail.com' 
select first_name || last_name|| '@gmail.com'
from customer

-- if we want first letter from right side lower case 
select upper(right(first_name,1)),first_name from customer

-- SUBQUERY

select*from film;

-- calculate rental rate avrg in higher rate 
-- step 1 

select avg(rental_rate) from film;

-- step 2

select title,rental_rate from film
where rental_rate>(select avg(rental_rate) from film);

-- QUESTION 2

select*from rental;
select*from inventory;


-- step 1
select*from rental
where return_date between '2005-05-29' and '2005-05-30';

-- step 2

select inventory.film_id from rental
inner join inventory on inventory.inventory_id=rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30';

-- step-3

select film_id,title from film
where film_id in (select inventory.film_id from rental
inner join inventory on inventory.inventory_id=rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30'
)
order by title;

-- Exists operater
select first_name,last_name from customer as c
where exists (select*from payment as p 
			 where p.customer_id=c.customer_id
			 and amount>11)

-- self join 

select*from film;


select title,length from film
where length=117;

select title ,length
from film;

-- self join 

select f1.title, f2.title, f1.length
from film as f1
inner join film as f2 on
f1.film_id!=f2.film_id and f1.length = f2.length;





















///


