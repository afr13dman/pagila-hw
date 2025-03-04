/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have paid for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT f.title, sum(p.amount) as profit
FROM film f
JOIN inventory i on f.film_id = i.film_id
JOIN rental r on i.inventory_id = r.inventory_id
JOIN payment p on r.rental_id = p.rental_id
GROUP BY f.title
ORDER BY profit DESC;
