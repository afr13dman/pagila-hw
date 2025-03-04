/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */

SELECT i.film_id, f.title, count(i.inventory_id)
FROM inventory i
JOIN film f on i.film_id = f.film_id
WHERE f.title LIKE 'H%'
GROUP BY i.film_id, f.title
ORDER BY f.title DESC;
