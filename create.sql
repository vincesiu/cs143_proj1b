CREATE TABLE Movie(
        id int,
        title varchar(100),
        year int,
        rating varchar(10),
        company varchar(50)
        );

CREATE TABLE Actor(
        id int,
        last varchar(20),
        first varchar(20),
        dob date,
        dod date
        );

CREATE TABLE Director(
        id int,
        last varchar(20),
        first varchar(20),
        dob date,
        dod date
        );

CREATE TABLE MovieGenre(
        mid int,
        genre varchar(20)
        );

CREATE TABLE MovieDirector(
        mid int,
        did int
        );

CREATE TABLE MovieActor(
        mid int,
        aid int,
        role varchar(50)
        );

CREATE TABLE Review(
        name varchar(20),
        time timestamp,
        mid int,
        rating int,
        comment varchar(500)
        );

CREATE TABLE MaxPersonID(
        id int
        );

CREATE TABLE MaxMovieID(
        id int
        );

# DROP TABLE IF EXISTS Movie, Actor, Director, MovieGenre, MovieDirector, Review, MovieActor, MaxPersonID, MaxMovieID;
