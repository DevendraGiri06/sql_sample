select title,length from film 
order by length asc
limit 5 ;
 
-- if the previous customer can watch any movie that is 50 minutes pr
-- less in run time , how many options does she have
select count(title) from film
where length<=50

-- between operater 

select*from payment
limit 2

-- we get the ammount 8 and 9 using between operater

select *from payment
where amount between 8 and 9;

-- how many payment 8 and 9 
select count(*) from payment
where amount between 8 and 9;

-- not 8 and 9 
select count(*) from payment
where amount not between 8 and 9;

-- we want get only duration these date 
select*from payment
where payment_date between '2007-02-01' and '2007-02-15';

-- IN operater
select distinct(amount) from payment
order by amount;
--  we want only these ammount 

select amount from payment
where amount in (1.99,7.99)
order by amount;

-- we want not in these amount 0.99,1.99,1.98

select count(*) from payment
where amount not in (0.99,1.98,1.99)

-- we want only these name john ,jake julie

select*from customer
where first_name in ('john','Jared','julie');

-- we want not these name john ,jake julie 
select count(*)from customer
where first_name not in ('john','Jared','julie');

-- Like and ilike 
-- start with M 
select*from customer
where first_name like 'M%';

-- how many start with M and how many

select count(*) from customer
where first_name like 'M%';

-- how many first_name start with M and last_name S how many 

select count(*) from customer
where first_name like 'M%' and last_name like 'G%'


-- there char any where print 'rr'

select*from customer
where first_name like '%rr%';

-- only one char after give the out put single underscore _

select*from customer
where first_name like '_her%';
--  use order by

select*from customer
where first_name like '_her%'
order by first_name;

-- Group By Function 
--     Aggregate Function 

select*from film;
--  minimun replacement_cost 

select min(replacement_cost) from film;

--  maximun replacement_cost

select max(replacement_cost),min(replacement_cost) from film;

-- group by

select*from payment;


select customer_id from payment
group by customer_id
order by customer_id;

-- 2

select customer_id,sum(amount) from payment
group by customer_id
order by sum(amount);

-- 3 group by

select customer_id,staff_id,sum(amount) from payment
group by staff_id,customer_id;



select customer_id,staff_id,sum(amount) from payment
group by staff_id,customer_id
order by customer_id;



select customer_id,staff_id,sum(amount) from payment
group by staff_id,customer_id
order by staff_id,customer_id;

-- group by on date 

select payment_date from payment;

select date(payment_date) from payment;

-- 1

select date(payment_date), sum(amount) from payment
group by date(payment_date)
order by sum(amount) desc

-- challenge 
 
select staff_id,count(*) from payment
group by staff_id;


-- Having clause

select*from payment;

select customer_id,sum(amount) from payment
group by customer_id
having sum(amount)>100

 
-- 2
select*from customer;


select store_id,count(customer_id) from customer
group by store_id


-- after group by using having 

select store_id,count(customer_id) from customer
group by store_id
having count(*)>300;
















/