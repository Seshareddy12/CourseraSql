use sakila;
-- Find out the PG-13 rated comedy movies. DO NOT use the film_list table.
select title from film where film_id = ANY(select film_id from film_category where category_id=(select category_id from category where name = "comedy")) and rating = "PG-13";