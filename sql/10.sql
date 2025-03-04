/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */

SELECT f.title, f.film_id, count(actor_id) as actor_count 
FROM film f
JOIN film_actor fa on f.film_id = fa.film_id
GROUP BY f.title, f.film_id
ORDER BY actor_count, f.title;
