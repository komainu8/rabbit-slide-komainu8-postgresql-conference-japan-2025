DROP INDEX IF EXISTS pgroonga_content_index;
CREATE INDEX pgroonga_content_index ON contents_for_pgroonga
 USING pgroonga (content pgroonga_text_semantic_search_ops_v2)
 WITH (plugins = 'language_model/knn',
       model = 'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF');

SET enable_seqscan = off;

SELECT content, pgroonga_score(tableoid, ctid)
  FROM contents_for_pgroonga
 WHERE content &@* pgroonga_condition('boy')

SELECT content, pgroonga_score(tableoid, ctid)
  FROM contents_for_pgroonga
 WHERE content &@* pgroonga_condition('dog')

SELECT content, pgroonga_score(tableoid, ctid)
  FROM contents_for_pgroonga
 WHERE content &@* pgroonga_condition('王');

SELECT content, pgroonga_score(tableoid, ctid)
  FROM contents_for_pgroonga
 WHERE content &@* pgroonga_condition('男の子');
