FROM postgres:12.1

LABEL   maintainer.name="Akim Gubanov" \
        maintainer.email="akim_now@mail.ru" \
        description="Docker psql to help you learn PostgresSQL from books"

RUN apt-get update && apt-get install -y --no-install-recommends \
        wget \
        mc \
        htop

# See "Initialization scripts" at
# https://hub.docker.com/_/postgres
COPY ./init.sh /docker-entrypoint-initdb.d/

# MOLINARO
# Database dump for book: SQL Cookbook. Anthony Molinaro. 2009
COPY ./molinaro.sql /docker-entrypoint-initdb.d/

# Database dump for book: Postgres: первое знакомство
# demo-small || demo-medium || demo-big
RUN wget -P /downloads/ --no-check-certificate https://edu.postgrespro.ru/demo-big.zip \
    && chmod -R 777 /downloads/
