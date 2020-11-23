 -- Find out the top 3 rented horror movies.
use sakila;
select title,count(customer_id) as rents from film_list
INNER JOIN  inventory
on inventory.film_id=film_list.fid
INNER JOIN rental 
on inventory.inventory_id = rental.inventory_id
where category = "Horror"
group by title order by rents desc LIMIT 3;
