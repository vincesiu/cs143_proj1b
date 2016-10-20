-- This violates the constraint for Movie by adding a 
-- null movie id
INSERT INTO Movie
VALUES (NULL, NULL, NULL, NULL, NULL);
-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'int Movie values (null, null, null, null, null)' at line 1



-- This violates the check constraint that the id of a movie
-- must be less than the max movie id from MaxMovieId
INSERT INTO Movie
VALUES(4751, NULL, NULL, NULL, NULL);
-- Query OK, 1 row affected (0.00 sec)
-- NOTE: this happens because mysql doesn't support check constraints



-- This violates the primary key constraint for Actor by
-- adding an id which already exists
INSERT INTO Actor
VALUES (24126, NULL, NULL, NULL, NULL);
-- ERROR 1062 (23000): Duplicate entry '24126' for key 'PRIMARY'
                       


-- This violates the check constraint that the id of an actor
-- must be less than the max person id from MaxPersonID
INSERT INTO Actor
VALUES (69001, NULL, NULL, NULL, NULL);
-- Query OK, 1 row affected (0.00 sec)
-- NOTE: this happens because mysql doesn't support check constraints



-- This violates the primary key constraint for Director by
-- adding an id which already exists
INSERT INTO Director
VALUES (68626, NULL, NULL, NULL, NULL);
-- ERROR 1062 (23000): Duplicate entry '68626' for key 'PRIMARY'



-- This violates the check constraint that the id of a director
-- must be less than the max person id from MaxPersonID
INSERT INTO Director
VALUES (69001, NULL, NULL, NULL, NULL);
-- Query OK, 1 row affected (0.00 sec)
-- NOTE: this happens because mysql doesn't support check constraints



-- This violates the constraint for MovieGenre by adding a 
-- movie id which does not exist in the Movie table
INSERT INTO MovieGenre
VALUES (4751, "scifi");
-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`TEST`.`MovieGenre`, CONSTRAINT `MovieGenre_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `Movie` (`id`))
                       



-- This violates the foreign key constraint for MovieDirector by adding a
-- director id which does not reference an id inside the Director table
INSERT INTO MovieDirector
VALUES(4734, 68627);
-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`TEST`.`MovieGenre`, CONSTRAINT `MovieGenre_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `Movie` (`id`))



-- This violates the foreign key constraint for MovieDirector by adding a
-- movie id which does not reference an id inside the Movie table
INSERT INTO MovieDirector
VALUES(4751, 68626);
-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`TEST`.`MovieDirector`, CONSTRAINT `MovieDirector_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `Movie` (`id`))



-- This violates the foreign key constraint for MovieActor by adding a movie
-- id which does not reference an id inside the Movie table
INSERT INTO MovieActor
VALUES (24126, 4751, NULL);
-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`TEST`.`MovieActor`, CONSTRAINT `MovieActor_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `Actor` (`id`))




-- This violates the foreign key constraint for MovieActor by adding a actor
-- id which does not reference an id inside the Actor table
INSERT INTO MovieActor
VALUES (24127, 4734, NULL);
-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`TEST`.`MovieActor`, CONSTRAINT `MovieActor_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `Movie` (`id`))




-- This violates the foreign key restrain for Review since it adds a movie
-- id which does not reference an id inside the Movie table
INSERT INTO Review
VALUES (NULL, NULL, 4751, 5, NULL);
-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`TEST`.`Review`, CONSTRAINT `Review_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `Movie` (`id`))
