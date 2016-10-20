-- This violates the constraint for Movie by adding a 
-- null movie id
INSERT INTO Movie
VALUES (NULL, NULL, NULL, NULL, NULL);

-- This violates the check constraint that the id of a movie
-- must be less than the max movie id from MaxMovieId
INSERT INTO Movie
VALUES(4751, NULL, NULL, NULL, NULL);

-- This violates the primary key constraint for Actor by
-- adding an id which already exists
INSERT INTO Actor
VALUES (24126, NULL, NULL, NULL, NULL);

-- This violates the check constraint that the id of an actor
-- must be less than the max person id from MaxPersonID
INSERT INTO Actor
VALUES (69001, NULL, NULL, NULL, NULL);

-- This violates the primary key constraint for Director by
-- adding an id which already exists
INSERT INTO Director
VALUES (68626, NULL, NULL, NULL, NULL);

-- This violates the check constraint that the id of a director
-- must be less than the max person id from MaxPersonID
INSERT INTO Director
VALUES (69001, NULL, NULL, NULL, NULL);

-- This violates the constraint for MovieGenre by adding a 
-- movie id which does not exist in the Movie table
INSERT INTO MovieGenre
VALUES (4751, "scifi");

-- This violates the foreign key constraint for MovieDirector by adding a
-- director id which does not reference an id inside the Director table
INSERT INTO MovieDirector
VALUES(4734, 68627);

-- This violates the foreign key constraint for MovieDirector by adding a
-- movie id which does not reference an id inside the Movie table
INSERT INTO MovieDirector
VALUES(4751, 68626);

-- This violates the foreign key constraint for MovieActor by adding a movie
-- id which does not reference an id inside the Movie table
INSERT INTO MovieActor
VALUES (24126, 4751, NULL);

-- This violates the foreign key constraint for MovieActor by adding a actor
-- id which does not reference an id inside the Actor table
INSERT INTO MovieActor
VALUES (24126, 4751, NULL);

-- This violates the foreign key restrain for Review since it adds a movie
-- id which does not reference an id inside the Movie table
INSERT INTO Review
VALUES (NULL, NULL, 4751, 5, NULL);
