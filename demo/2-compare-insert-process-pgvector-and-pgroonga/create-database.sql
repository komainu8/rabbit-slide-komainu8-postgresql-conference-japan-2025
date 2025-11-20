CREATE DATABASE semantic_search_test;
\c semantic_search_test
CREATE EXTENSION IF NOT EXISTS pgroonga;
CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS  contents_for_pgvector (
  content text,
  content_embedding vector(384)
);

CREATE TABLE IF NOT EXISTS  contents_for_pgroonga (
  content text
);
