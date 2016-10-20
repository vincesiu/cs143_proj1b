SELECT first,last 
FROM Actor INNER JOIN (
	SELECT aid FROM MovieActor 
	INNER JOIN Movie 
	ON MovieActor.mid = Movie.id 
	WHERE Movie.title = 'Die Another Day') AS Actors 
ON Actor.id = Actors.aid;

SELECT count(*) FROM (
	SELECT aid
	FROM MovieActor
	GROUP BY aid
	HAVING count(mid) > 1) AS ActorsInMultipleMovies;