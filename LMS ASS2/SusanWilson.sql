-- Find out the number of R rated movies rented by “SUSAN WILSON”.
use sakila;
select count(fid) from film_list
INNER JOIN inventory
on film_list.fid = inventory.film_id
INNER JOIN rental
on rental.inventory_id = inventory.inventory_id
INNER JOIN customer
on rental.customer_id = customer.customer_id
where (customer.first_name = "SUSAN" and customer.last_name = "WILSON" ) and rating = "R"
;
