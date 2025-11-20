# Demonstration

## Build a Docker image

```bash
docker compose build
```

## Start

```bash
docker compose up -d
```

## Setup

```bash
docker compose exec db bash -c \
  'psql -Upgroonga < /demo/1-compare-keyword-search-and-semantic-search/create-database.sql'
docker compose exec db bash -c \
  'psql -Upgroonga -dsemantic_search_test < /demo/1-compare-keyword-search-and-semantic-search/insert-data.sql'
docker compose exec db bash -c \
  'psql -Upgroonga -dsemantic_search_test < /demo/1-compare-keyword-search-and-semantic-search/create-index.sql'
```

```bash
docker compose exec db bash -c \
  'psql -Upgroonga < /demo/2-compare-insert-process-pgvector-and-pgroonga/create-database.sql'
docker compose exec db bash -c \
  'psql -Upgroonga -dsemantic_search_test < /demo/2-compare-insert-process-pgvector-and-pgroonga/insert-with-pgroonga.sql'
docker compose exec db bash -c \
  'psql -Upgroonga -dsemantic_search_test < /demo/2-compare-insert-process-pgvector-and-pgroonga/insert-with-pgvector.sql'
```

```bash
docker compose exec db bash -c \
  'psql -Upgroonga -dsemantic_search_test < /demo/5-shops/create-database.sql'
docker compose exec db bash -c \
  'psql -Upgroonga -dsemantic_search_test < /demo/5-shops/insert.sql'
```

## pgAdmin

Please access http://localhost:8080

`Please enter the password for the user 'pgroonga' to connect the server - "db"` => `pgroonga`.

### Search Examples

* 1-compare-keyword-search-and-semantic-search/search-query/search.sql
* 1-compare-keyword-search-and-semantic-search/search-query/count.sql
* 2-compare-insert-process-pgvector-and-pgroonga/search-with-pgroonga.sql
* 2-compare-insert-process-pgvector-and-pgroonga/search-with-pgvector.sql
* 5-shops/search.sql

## Stop

```bash
docker compose down
```
