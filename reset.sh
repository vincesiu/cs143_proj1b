#!/bin/bash

echo "DROP TABLE IF EXISTS Movie, Actor, Director, MovieDirector, MovieGenre, Review, MovieActor, MaxPersonID, MaxMovieID" | mysql TEST

mysql TEST < create.sql
mysql TEST < load.sql
