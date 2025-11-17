DROP INDEX IF EXISTS pgroonga_content_semantic_search_index;
CREATE INDEX pgroonga_content_semantic_search_index ON jpug_doc_contents
 USING pgroonga (content pgroonga_text_semantic_search_ops_v2)
 WITH (plugins = 'language_model/knn',
       model = 'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF');

DROP INDEX IF EXISTS pgroonga_content_keyword_search_index;
CREATE INDEX pgroonga_content_semantic_keyword_index ON jpug_doc_contents
 USING pgroonga (content);
