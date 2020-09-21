#!/bin/bash

cp .env.example .env

git clone git@github.com:EdgarsJoja/tet_backend.git src/backend/
cp src/backend/.env.example src/backend/.env

git clone git@github.com:EdgarsJoja/tet_frontend.git src/frontend/

docker-compose pull
docker-compose build
docker-compose up -d
