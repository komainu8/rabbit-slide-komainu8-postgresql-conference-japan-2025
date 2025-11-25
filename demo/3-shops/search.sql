SET enable_seqscan = off;

SELECT * FROM shops_pgroonga
ORDER BY content <&@*> pgroonga_condition('ほどほどに辛いラーメン')
LIMIT 5;

WITH v AS (
  SELECT pgroonga_language_model_vectorize(
    'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
    'ほどほどに辛いラーメン'
  )::vector AS query
)
SELECT content FROM shops_pgvector, v
ORDER BY embedding <-> query
LIMIT 5;
