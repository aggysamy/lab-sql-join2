Use sakila;
#List the number of films per category
SELECT c.category, COUNT(film_id)
FROM film f
INNER JOIN film_id f
ON f.film_id = f.film_id
GROUP BY title;

select c.name, count(f.film_id) counter
from categories c left join films f
on f.category_id = c.category_id
group by c.category_id, c.name;

#Display the first and the last names, as well as the address, of each staff member.
SELECT first_name, last_name, address
FROM staff s
INNER JOIN address a
ON s.address_id = a.address_id;

#Display the total amount rung up by each staff member in August 2005.
SELECT first_name, last_name, SUM(amount)
FROM staff s
INNER JOIN payment p
ON s.staff_id = p.staff_id
GROUP BY p.staff_id
ORDER BY last_name ASC;

#List all films and the number of actors who are listed for each film.
SELECT title, COUNT(actor_id)
FROM film f
INNER JOIN film_actor fa
ON f.film_id = fa.film_id
GROUP BY p.staff_id
ORDER BY last_name ASC;

SELECT last_name, first_name, SUM(amount)
FROM payment p
INNER JOIN customer c
ON p.customer_id = c.customer_id
GROUP BY p.customer_id
ORDER BY last_name ASC;
