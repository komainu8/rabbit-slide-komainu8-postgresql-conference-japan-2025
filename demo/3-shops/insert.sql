INSERT INTO shops_pgroonga VALUES ('辛いラーメンのお店');
INSERT INTO shops_pgroonga VALUES ('激辛ラーメンのお店');
INSERT INTO shops_pgroonga VALUES ('甘辛ラーメンのお店');
INSERT INTO shops_pgroonga VALUES ('ただのラーメン店');
INSERT INTO shops_pgroonga VALUES ('洋菓子のお店');
INSERT INTO shops_pgroonga VALUES ('和菓子のお店');
INSERT INTO shops_pgroonga VALUES ('ちょっと辛口ラーメンのお店');

DROP INDEX IF EXISTS shops_pgroonga_index;
CREATE INDEX shops_pgroonga_index ON shops_pgroonga
 USING pgroonga (content pgroonga_text_semantic_search_ops_v2)
 WITH (plugins = 'language_model/knn',
       model = 'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF');

INSERT INTO shops_pgvector VALUES(
  '辛いラーメンのお店',
  pgroonga_language_model_vectorize(
    'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
    '辛いラーメンのお店'
  )
);
INSERT INTO shops_pgvector VALUES (
  '激辛ラーメンのお店',
  pgroonga_language_model_vectorize(
    'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
    '激辛ラーメンのお店'
  )
);
INSERT INTO shops_pgvector VALUES (
  '甘辛ラーメンのお店',
  pgroonga_language_model_vectorize(
    'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
    '甘辛ラーメンのお店'
  )
);
INSERT INTO shops_pgvector VALUES (
  'ただのラーメン店',
  pgroonga_language_model_vectorize(
    'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
    'ただのラーメン店'
  )
);
INSERT INTO shops_pgvector VALUES (
  '洋菓子のお店',
  pgroonga_language_model_vectorize(
    'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
    '洋菓子のお店'
  )
);
INSERT INTO shops_pgvector VALUES (
  '和菓子のお店',
  pgroonga_language_model_vectorize(
    'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
    '和菓子のお店'
  )
);
INSERT INTO shops_pgvector VALUES (
  'ちょっと辛口ラーメンのお店',
  pgroonga_language_model_vectorize(
    'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
    'ちょっと辛口ラーメンのお店'
  )
);
DROP INDEX IF EXISTS shops_pgvector_index;
CREATE INDEX shops_pgvector_index ON shops_pgvector
  USING ivfflat (embedding vector_l2_ops)
  WITH (lists = 100);
