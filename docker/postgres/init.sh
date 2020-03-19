#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status.
set -e

# $POSTGRES_USER and $POSTGRES_DB defaults = postgres
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER $MOLINARO_USER_NAME WITH ENCRYPTED PASSWORD '$MOLINARO_USER_PASSWORD';
    CREATE DATABASE $MOLINARO_DB_NAME;
    ALTER DATABASE $MOLINARO_DB_NAME OWNER TO $MOLINARO_USER_NAME;
    GRANT ALL PRIVILEGES ON DATABASE $MOLINARO_DB_NAME TO $MOLINARO_USER_NAME;
EOSQL

# MOLINARO
# Database dump for book: "SQL Cookbook. Anthony Molinaro. 2009"
psql molinaro < /docker-entrypoint-initdb.d/molinaro.sql

# INTROBOOK
# Database dump for book: "Postgres: первое знакомство""
# https://edu.postgrespro.ru/introbook_v6.pdf
mkdir ~/downloads
wget -P ~/downloads/ --no-check-certificate https://edu.postgrespro.ru/"$INTROBOOK_DB".zip
zcat ~/downloads/"$INTROBOOK_DB".zip | psql --username "$POSTGRES_USER"
rm ~/downloads/"$INTROBOOK_DB".zip
