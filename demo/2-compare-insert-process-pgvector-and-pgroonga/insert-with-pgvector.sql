INSERT INTO contents_for_pgvector (content, content_embedding)
       SELECT 'I am a boy', (pgroonga_language_model_vectorize(
                                'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
                                'I am a boy'));

INSERT INTO contents_for_pgvector (content, content_embedding)
       SELECT 'I am a dog', (pgroonga_language_model_vectorize(
                                'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
                                'I am a dog'));

INSERT INTO contents_for_pgvector (content, content_embedding)
       SELECT 'I am a king', (pgroonga_language_model_vectorize(
                                'hf:///groonga/all-MiniLM-L6-v2-Q4_K_M-GGUF',
                                'I am a king'));

SELECT * FROM contents_for_pgvector;
--  I am a boy  | [-0.05031514,0.10813845,...,-0.12843993]
--  I am a dog  | [-0.03515085,-0.0059523215,...,-0.024966048]
--  I am a king | [-0.030026972,0.057919234,...,-0.09476562]
-- (3 行)
