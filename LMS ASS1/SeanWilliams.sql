--  Find out the number of movies in which “SEAN WILLIAMS” acted.
use sakila;
select count(title) as TotalFilms from film_list where actors LIKE "%SEAN WILLIAMS%";
