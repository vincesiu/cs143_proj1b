#!/bin/bash -xue

echo "DROP TABLE IF EXISTS MovieDirector, MovieGenre, Review, MovieActor, MaxPersonID, MaxMovieID, Movie, Actor, Director"  | mysql TEST

mysql TEST < create.sql
mysql TEST < load.sql
