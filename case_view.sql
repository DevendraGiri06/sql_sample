-- case 

select*from customer
--
-- general case statement 

select customer_id,
case
	when (customer_id<=100) then 'Premium'
	when (customer_id between 100 and 2000) then 'Plus'
	else 'Normal'
end

from customer

-- use alisas in case

select customer_id,
case
	when (customer_id<=100) then 'Premium'
	when (customer_id between 100 and 2000) then 'Plus'
	else 'Normal'
end as customer_class

from customer

-- case expersion 

select customer_id,
case customer_id
	when 2 then 'Winner'
	when 5 then 'Second Place'
	else 'Normal'
end as raffle_results
from customer


-- 222
-- where is rental_rate 0.99 then go 1 
select rental_rate,
case rental_rate
	when 0.99 then 1
	else 0
end
from film

--  we want to above statement given sum 


select 
sum(case rental_rate
	when 0.99 then 1
	else 0
end) as number_of_bargains
from film

-- multiple operation use 


select 
sum(case rental_rate
	when 0.99 then 1
	else 0
end) as bargains,

count(case rental_rate
	when 2.99 then 1
	else 0
end) as regular
from film


-- 	view

--  first step 

select first_name,last_name,address from customer
inner join address
on customer.address_id = address.address_id



-- second step 

create view customer_info as
select first_name,last_name,address from customer
inner join address
on customer.address_id = address.address_id


select*from customer_info
  
--   drop view table 
 drop view if exists customer_ifo

-- rename  view 
alter view customer_info rename to c_info







///