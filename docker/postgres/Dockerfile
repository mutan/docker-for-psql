FROM postgres:12.1

RUN apt-get update && apt-get install -y --no-install-recommends \
        mc \
        htop

# See "Initialization scripts" at
# https://hub.docker.com/_/postgres
COPY ./init.sh /docker-entrypoint-initdb.d/
COPY ./molinaro.sql /docker-entrypoint-initdb.d/
