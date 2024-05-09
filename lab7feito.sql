-- Create a table rentals_may to store the data from rental table with information for the month of May.

select *
from sakila.rental;

CREATE TEMporary table sakila.rentals_may as
select *
from sakila.rental 
where extract(month from rental_date) = 5;

select *
from sakila.rentals_may;

-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

-- Create a table rentals_june to store the data from rental table with information for the month of June.

CREATE TEMporary table sakila.rentals_june as
select *
from sakila.rental 
where extract(month from rental_date) = 6;

select*
from sakila.rentals_june;

-- Check the number of rentals for each customer for May.

select customer_id, count(*) as 
rental_count
from rentals_may
group by customer_id;

-- Check the number of rentals for each customer for June.

select customer_id, count(*) as 
rental_count
from sakila.rentals_june
group by customer_id;



