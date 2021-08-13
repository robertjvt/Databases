-- Selects all distinct actors who played in movies with crime genre.
SELECT DISTINCT actor.first_name, actor.last_name
FROM actor
NATURAL JOIN r4
WHERE filmID IN(
    SELECT filmID
    FROM film
    NATURAL JOIN r4
    NATURAL JOIN actor
    WHERE genre='crime'
);


-- Selects all actors who play in more than one movie.
SELECT first_name, last_name, COUNT(first_name) AS Movie_count
FROM actor
NATURAL JOIN r4
GROUP BY actorID
HAVING COUNT(actorID) > 1;

-- Selects all distinct actors who played in both a serie and film.
SELECT DISTINCT first_name, last_name
FROM actor
NATURAL JOIN r4
WHERE filmID IN (
		SELECT filmID
		FROM film
		NATURAL JOIN r4
        NATURAL JOIN r5
		WHERE serieID IN(
				SELECT serieID
                FROM serie 
                NATURAL JOIN r5
		)
);

-- Select the average ratings of all genres
SELECT AVG(rating), genre
FROM serie
GROUP BY genre;

-- Select persons and their total amount of money spent on movies
SELECT first_name, last_name, sum(price) AS Paid_on_movies
FROM film
NATURAL JOIN r2
NATURAL JOIN customerdata
GROUP BY first_name;

-- Select actors who played in the movie The Shining
SELECT first_name, last_name
FROM actor
NATURAL JOIN film
NATURAL JOIN r4
WHERE title = 'the Shining';

-- Select distinct plans that have a timeframe of longer than a month
SELECT DISTINCT p.plan
FROM CustomerData cd
JOIN SubscriptionData sd
ON cd.customerID = sd.customerID
JOIN Plans p
ON sd.plan = p.plan
WHERE timeframe > 31;

-- Select all persons that live in Groningen and who's streets start with an H
SELECT c.first_name, c.last_name
FROM Customerdata c
WHERE EXISTS(
    SELECT *
    FROM PostalCodes po
    WHERE po.city = 'Groningen'
    AND po.street LIKE 'H%'
    AND po.postal_code = c.postal_code
);

-- Select customers who have a plan with the highest timeframe possible
SELECT c.first_name, c.last_name 
FROM customerdata c
WHERE customerid IN (
    SELECT customerid
	FROM subscriptiondata s
    WHERE plan IN(
        SELECT plan
        FROM plans p
        WHERE timeframe = (SELECT MAX(timeframe) FROM plans)
	)
);

-- Select the series and films with the highest price
(SELECT title, price
FROM serie
WHERE price = (SELECT MAX(price) from serie))
UNION
(SELECT title, price
FROM film 
WHERE price = (SELECT MAX(price) from film));