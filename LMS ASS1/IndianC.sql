-- Find out the list of customers from India who have rented sports movies.
use sakila;
select distinct concat(first_name,' ',last_name) as CustomerName from film_list
INNER JOIN  inventory
on inventory.film_id=film_list.fid
INNER JOIN rental 
on inventory.inventory_id = rental.inventory_id
INNER JOIN customer
on rental.customer_id = customer.customer_id
INNER JOIN address
on customer.address_id = address.address_id
INNER JOIN city
on city.city_id = address.city_id
INNER JOIN country
on city.country_id = country.country_id
where country = "India" and category = "Sports";

