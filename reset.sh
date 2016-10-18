#!/bin/bash

echo "DROP TABLE IF EXISTS Movie, Actor, MovieDirector, MovieGenre, Review, MovieActor, MaxPersonID, MaxMovieID" | mysql TEST
