Learn SQL / PostgreSQL from some great (in my opinion) books!  

This repository gives you:
* `psql` command line tool (from docker container)  
* databases filled with appropriate data for every book  

Read the books for theory. Then test every piece of code or any of your own ideas in practice.  

### Books

1. SQL Cookbook. Anthony Molinaro. 2009  
(database and user name: `molinaro`)

2. Postgres: первое знакомство. 2020  
[Download for free](https://postgrespro.ru/education/books/introbook)  
(database: `demo`)




##### Copyright notice

As far as I know, some books are not freely distributed. Use Google or whatever to find and purchase a legal copy.

### Prerequisites

* `git`, `docker`, `docker-compose` installed on your local machine.  
* Beginner level knowledge of `docker` and `psql`.

### Installation

```bash
# 1. Clone the repository
git clone git@github.com:mutan/docker-for-psql.git  

# 2. Step inside just cloned directory
cd docker-for-psql

# 3. Build and start docker containers
docker-compose up -d
```

Now practice! Run `psql` inside docker container.

```bash
docker-compose exec postgres psql -U postgres
```

Don't forget to stop containers at the end of work.
```bash
docker-compose down
```
