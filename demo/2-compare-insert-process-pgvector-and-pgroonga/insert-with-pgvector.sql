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
