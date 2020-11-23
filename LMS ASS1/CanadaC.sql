-- Find out the list of customers from Canada who have rented “NICK WAHLBERG” movies.
use sakila;
select distinct concat(first_name,' ',last_name) as CanadaCustomers from film_list
INNER JOIN inventory
on film_list.fid = inventory.film_id
INNER JOIN rental
on inventory.inventory_id = rental.inventory_id
INNER JOIN customer
on rental.customer_id = customer.customer_id
INNER JOIN address
on customer.address_id = address.address_id
INNER JOIN city
on address.city_id = city.city_id
INNER JOIN country
on city.country_id = country.country_id
where actors LIKE "%NICK WAHLBERG%" and
country = "Canada";