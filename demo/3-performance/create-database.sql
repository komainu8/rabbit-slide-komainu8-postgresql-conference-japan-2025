CREATE DATABASE semantic_search_performance;
\c semantic_search_performance
CREATE EXTENSION IF NOT EXISTS pgroonga;

CREATE TABLE wikipedia (
  id integer,
  title text,
  text text
);
