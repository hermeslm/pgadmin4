pgAdmin 4
=========

pgAdmin 4 is a rewrite of the popular pgAdmin3 management tool for the
PostgreSQL (http://www.postgresql.org) database.

## Source

This source is taken from the official (https://github.com/postgres/pgadmin4) repo and added some features like pg_dump and pg_restore tools for backup and restore functionality.

---

## Docker Continer

Docker container doc can be accessed from this page (https://hub.docker.com/r/dpage/pgadmin4/).

## Build this container from source.

1. Download or clone the pgAdmin4 repo (https://github.com/postgres/pgadmin4).
2. Overwrite the **Dockerfile** in /pkg/docker.
3. Copy the file /pkg/docker/build.sh to the top-level directory of the source tree.
4. Execute from the top-level directory the copied script **build.sh**.
5. You will have your new docker image of pgAdmin with backup and restore functionality.

## Running this container using docker-compose.

1. At the top-level directory of this source tree.

### Start pgadmin4 
./service.sh pgadmin start

### Stop pgadmin4.
./service.sh pgadmin stop

### Restart pgadmin4.
./service.sh pgadmin restart

