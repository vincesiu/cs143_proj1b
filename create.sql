CREATE TABLE Movie(
        id int NOT NULL,
        title varchar(100) NOT NULL,
        year int,
        rating varchar(10),
        company varchar(50),
        PRIMARY KEY(id)
        ) ENGINE=InnoDB;

CREATE TABLE Actor(
        id int NOT NULL,
        last varchar(20),
        first varchar(20),
        dob date,
        dod date,
        PRIMARY KEY(id)
        ) ENGINE=InnoDB;

CREATE TABLE Director(
        id int NOT NULL,
        last varchar(20),
        first varchar(20),
        dob date,
        dod date,
        PRIMARY KEY(id)
        ) ENGINE=InnoDB;

CREATE TABLE MovieGenre(
        mid int NOT NULL,
        genre varchar(20) NOT NULL,
        FOREIGN KEY (mid) REFERENCES Movie(id)
        ) ENGINE=InnoDB;

CREATE TABLE MovieDirector(
        mid int NOT NULL,
        did int NOT NULL,
        FOREIGN KEY (did) REFERENCES Director(id),
        FOREIGN KEY (mid) REFERENCES Movie(id)
        ) ENGINE=InnoDB;

CREATE TABLE MovieActor(
        mid int NOT NULL,
        aid int NOT NULL,
        role varchar(50),
        FOREIGN KEY (aid) REFERENCES Actor(id),
        FOREIGN KEY (mid) REFERENCES Movie(id)
        ) ENGINE=InnoDB;

CREATE TABLE Review(
        name varchar(20),
        time timestamp,
        mid int NOT NULL,
        rating int NOT NULL,
        comment varchar(500),
        FOREIGN KEY (mid) REFERENCES Movie(id)
        ) ENGINE=InnoDB;

CREATE TABLE MaxPersonID(
        id int NOT NULL
        ) ENGINE=InnoDB;

CREATE TABLE MaxMovieID(
        id int NOT NULL
        ) ENGINE=InnoDB;

# DROP TABLE IF EXISTS Movie, Actor, Director, MovieGenre, MovieDirector, Review, MovieActor, MaxPersonID, MaxMovieID;
