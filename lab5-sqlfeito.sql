select * 
from sakila.actor;

-- --In the table actor, which are the actors whose last names are not repeated?

select capital_surname, count(*) as repeated
from sakila.actor
group by capital_surname
having repeated = 1;

-- Which last names appear more than once? 

select capital_surname, count(*) as repeated
from sakila.actor
group by capital_surname
having repeated > 1;

-- Using the rental table, find out how many rentals were processed by each employee.

select * 
from sakila.rental;

select staff_id, sum(rental_id) as total_perstaff
from sakila.rental
group by 1;

-- Using the film table, find out how many films were released each year.

select * 
from sakila.film;

select release_year, count(*) as numero_filmes_ano
from sakila.film
group by 1
order by 1;

-- Using the film table, find out for each rating how many films were there.

select rating, count(*) as films_per_rating
from sakila.film
group by 1
order by 1;

-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places

select rating, round(avg(length), 2) as average_lenght_perrating
from sakila.film
group by 1
order by 2;

-- Which kind of movies (rating) have a mean duration of more than two hours?

select rating, round(avg(length), 2) as average_lenght_perrating
from sakila.film
group by 1
having average_lenght_perrating > 120
order by 2;