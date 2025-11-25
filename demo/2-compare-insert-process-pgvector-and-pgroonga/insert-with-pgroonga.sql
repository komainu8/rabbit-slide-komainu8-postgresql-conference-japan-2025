INSERT INTO contents_for_pgroonga VALUES ('I am a boy');
INSERT INTO contents_for_pgroonga VALUES ('I am a dog');
INSERT INTO contents_for_pgroonga VALUES ('I am a king');

DROP INDEX IF EXISTS pgroonga_content_index;
CREATE INDEX pgroonga_content_index ON contents_for_pgroonga
 USING pgroonga (content pgroonga_text_semantic_search_ops_v2)
 WITH (plugins = 'language_model/knn',
       model = 'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF');

INSERT INTO contents_for_pgroonga VALUES ('I am a boy');
INSERT INTO contents_for_pgroonga VALUES ('I am a dog');
INSERT INTO contents_for_pgroonga VALUES ('I am a king');

SELECT * FROM contents_for_pgroonga;
--    content   
-- -------------
--  I am a boy
--  I am a dog
--  I am a king
-- (3 行)
