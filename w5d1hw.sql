--How many actors are there with the last name 'Wahlberg'
SELECT COUNT(actor)
FROM actor
WHERE last_name LIKE 'Wahlberg';

--How many payments were made between 3.99 and 5.99--
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--What film does the store have the most of?
SELECT COUNT(inventory_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(inventory_id) DESC
LIMIT 72;


--How many customers have the last name 'William'?--
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';

--What store employee(id) sold the most rentals?
SELECT COUNT(staff_id), MAX(staff_id) as rented_the_most
FROM rental;

--How many diff district names are there?
SELECT COUNT(DISTINCT district)
FROM address;

--What film has the most actors in it?
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC
LIMIT 1;

--From store_id1, how many customers have a last name ending with 'es'?--
SELECT COUNT(last_name)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--How many payment amounts had rentals > 250 for 380<customer id<430--
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND  430
GROUP BY amount
HAVING COUNT(amount) > 250
ORDER BY COUNT(DISTINCT amount) DESC;



--Within the film table, how many rating categories are there? What rating has the most views?
SELECT COUNT(DISTINCT rating)
FROM film;

SELECT DISTINCT rating, COUNT(rating)
FROM film as most_views
GROUP BY rating
ORDER BY COUNT(rating) DESC
LIMIT 1;

