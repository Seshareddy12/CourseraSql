use sakila;
select count(fid) as Total_Scifi_Movies from film_list
INNER JOIN inventory
on film_list.fid = inventory.film_id
INNER JOIN store
on inventory.store_id = store.store_id
INNER JOIN staff
on store.manager_staff_id = staff.staff_id
where (staff.first_name = "Jon" and staff.last_name = "Stephens" ) and category="Sci-Fi"
