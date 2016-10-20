-- Violation
-- This violates the constraint for Movie by adding a 
-- null movie id
INSERT INTO Movie
VALUES (NULL, NULL, NULL, NULL, NULL);


-- Violation 
-- This violates the primary key constraint for Actor by
-- adding an id which already exists
INSERT INTO Actor
VALUES (24126, NULL, NULL, NULL, NULL);

-- Violation
-- This violates the primary key constraint for Director by
-- adding an id which already exists
INSERT INTO DIRECTOR
VALUES (68626, NULL, NULL, NULL, NULL);

-- Violation
-- This violates the constraint for MovieGenre by adding a 
-- null movie genre
INSERT INTO MovieGenre
VALUES (4751, NULL);

-- Violation
-- This violates the foreign key constraint for MovieDirector by adding a
-- director which does not reference a director inside the Director table
INSERT INTO MovieDirector
VALUES(4734, 68627);

-- Violation
-- This violates the foreign key constraint for MovieActor by adding a movie
-- id which does not reference an id inside the Movie table
INSERT INTO MovieActor
VALUES (24126, 4751, NULL);

-- Violation
-- This violates the foreign key restrain for Review since it adds a movie
-- id which does not reference an id inside the Movie table
INSERT INTO Review
VALUES (NULL, NULL, 4751, 5, NULL);

