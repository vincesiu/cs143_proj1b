-- Query 1
-- This query selects all actors who were in the movie 'Die Another Day'
SELECT first,last 
FROM Actor INNER JOIN (
	SELECT aid FROM MovieActor 
	INNER JOIN Movie 
	ON MovieActor.mid = Movie.id 
	WHERE Movie.title = 'Die Another Day') AS Actors 
ON Actor.id = Actors.aid;

-- Query 2
-- This query gets the number of actors who acted in multiple movies
SELECT count(*) FROM (
	SELECT aid
	FROM MovieActor
	GROUP BY aid
	HAVING count(mid) > 1) AS ActorsInMultipleMovies;
  
-- Query 3
-- This query gets ids of actors who acted in multiple genres
SELECT MovieActor.aid
FROM MovieGenre
JOIN MovieActor
ON MovieActor.mid = MovieGenre.mid
GROUP BY MovieActor.aid
HAVING count(DISTINCT MovieGenre.genre > 1)
