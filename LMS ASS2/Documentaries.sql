-- Find out the number of documentaries with deleted scenes.
use sakila;
select count(film.film_id) as TotalDocumentaries from film
inner join film_category
on film.film_id = film_category.film_id
inner join category
on film_category.category_id = category.category_id
where name = "Documentary" and special_features LIKE "%Deleted Scenes%";
