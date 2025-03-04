/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT f.title
FROM film f
JOIN film_category fc on f.film_id = fc.film_id
JOIN category c on fc.category_id = c.category_id
WHERE c.name = 'Family';
