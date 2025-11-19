SELECT contents_for_pgvector.content,
       (contents_for_pgvector.content_embedding <#> query_embedding.query) * -1 AS inner_product 
  FROM contents_for_pgvector,
       (
         SELECT CAST(pgroonga_language_model_vectorize(
                        'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
                        'boy') AS vector) AS query
       ) query_embedding
ORDER BY (contents_for_pgvector.content_embedding <#> query_embedding.query) * -1 DESC;

SELECT contents_for_pgvector.content,
       (contents_for_pgvector.content_embedding <#> query_embedding.query) * -1 AS inner_product 
  FROM contents_for_pgvector,
       (
         SELECT CAST(pgroonga_language_model_vectorize(
                        'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
                        'dog') AS vector) AS query
       ) query_embedding
ORDER BY (contents_for_pgvector.content_embedding <#> query_embedding.query) * -1 DESC;

SELECT contents_for_pgvector.content,
       (contents_for_pgvector.content_embedding <#> query_embedding.query) * -1 AS inner_product 
  FROM contents_for_pgvector,
       (
         SELECT CAST(pgroonga_language_model_vectorize(
                        'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
                        '王') AS vector) AS query
       ) query_embedding
ORDER BY (contents_for_pgvector.content_embedding <#> query_embedding.query) * -1 DESC;

SELECT contents_for_pgvector.content,
       (contents_for_pgvector.content_embedding <#> query_embedding.query) * -1 AS inner_product 
  FROM contents_for_pgvector,
       (
         SELECT CAST(pgroonga_language_model_vectorize(
                        'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
                        '男の子') AS vector) AS query
       ) query_embedding
ORDER BY (contents_for_pgvector.content_embedding <#> query_embedding.query) * -1 DESC;
