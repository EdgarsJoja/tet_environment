TET Euro exchange rates app
---
App for reading & displaying RSS feed with the latest euro exchange rates information.

This app consists of 3 repositories:
1) This repository, which is responsible for docker environment.
2) Backend repository, storing source code of BE API service (Laravel), 
which will be consumed by FE app. Check its readme for more info on API endpoints.
3) Frontend repository (Angular)

Before you start
---

This is dockerised environment so **docker** and **docker-compose**
services are required.

Tested on:
````
docker -v: Docker version 18.06.1-ce, build e68fc7a
docker-compose -v: docker-compose version 1.23.2, build 1110ad0
````
Make sure that these ports are free on your host machine 
as they will be used by the app:
- 9000 (php)
- 80 (nginx)
- 443 (nginx)
- 3306 (mariadb)
- 4200 (node/angular)

Setup
---
Tip: Check _Makefile_ for useful shortcuts:
- `make pull` - pulls all docker compose services images
- `make build` - builds all docker compose images
- `make up` - creates and starts all docker compose containers
- `make stop` - stops all running docker compose containers
- `make logs` - shows logs from all running containers

### Automated (todo)

### Manual

- Clone this repository:\
`git clone git@github.com:EdgarsJoja/tet_environment.git`
- Copy & rename _.env.example_ file to _.env_\
`cp .env.example .env`
- Clone backend app into _src/backend/_ directory\
`git clone git@github.com:EdgarsJoja/tet_backend.git src/backend/`
- Copy & rename backend app _.env.example_ file to _.env_\
`cp src/backend/.env.example src/backend/.env`
- Clone frontend app into _src/frontend/_ directory\
`git clone git@github.com:EdgarsJoja/tet_frontend.git src/frontend/`
- Pull docker images\
`docker-compose pull`
- Build docker images\
`docker-compose build`
- Create & start containers in background\
`docker-compose up -d`
- Check your browser. Frontend app should be accessible from 
`http://localhost:4200` and backend from `http://localhost`.
- Database connection details:\
  **host:** localhost\
  **port:** 3306\
  **user:** root\
  **password:** tet_root
- All done!
