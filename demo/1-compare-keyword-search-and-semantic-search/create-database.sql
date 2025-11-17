CREATE DATABASE semantic_search_test;
\c semantic_search_test
CREATE EXTENSION IF NOT EXISTS pgroonga;
CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE jpug_doc_contents (
  title text,
  content text
);
