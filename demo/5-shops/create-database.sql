CREATE DATABASE semantic_search_test;
\c semantic_search_test
CREATE EXTENSION IF NOT EXISTS vector;
CREATE EXTENSION IF NOT EXISTS pgroonga;

CREATE TABLE IF NOT EXISTS shops_pgvector (
  content text,
  embedding vector(384)
);
CREATE TABLE IF NOT EXISTS shops_pgroonga (
  content text
);
