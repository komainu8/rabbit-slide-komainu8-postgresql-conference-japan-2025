DROP INDEX IF EXISTS pgroonga_content_semantic_search_index;
CREATE INDEX pgroonga_content_semantic_search_index ON wikipedia
 USING pgroonga (text pgroonga_text_semantic_search_ops_v2)
 WITH (plugins = 'language_model/knn',
       model = 'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF');

