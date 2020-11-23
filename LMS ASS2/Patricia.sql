-- Find out the top 3 rented category of movies  by “PATRICIA JOHNSON”.
use sakila;
select category from film_list
INNER JOIN inventory
on film_list.fid = inventory.film_id
INNER JOIN rental
on rental.inventory_id = inventory.inventory_id
INNER JOIN customer
on rental.customer_id = customer.customer_id
where (customer.first_name = "PATRICIA" and customer.last_name = "JOHNSON" )
group by category order by count(category) desc limit 3;
