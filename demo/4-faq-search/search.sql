-- Semantic search
-- セマンティックサーチ用のインデックスが使われているかを確認するためのEXPLAIN
EXPLAIN ANALYZE
SELECT title, content, pgroonga_score(tableoid, ctid)
  FROM jpug_doc_contents
 WHERE content &@* pgroonga_condition('ウインドウ関数の使い方を教えて')
 ORDER BY pgroonga_score(tableoid, ctid) DESC LIMIT 3;

SELECT title, content, pgroonga_score(tableoid, ctid)
  FROM jpug_doc_contents
 WHERE content &@* pgroonga_condition('ウインドウ関数の使い方を教えて')
 ORDER BY pgroonga_score(tableoid, ctid) DESC LIMIT 3;
