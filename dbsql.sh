#!/usr/bin/env bash
docker-compose up -d
grep pass database.env
docker-compose exec database bash -c "psql --host=database --username=unicorn_user --dbname=rainbow_database"
