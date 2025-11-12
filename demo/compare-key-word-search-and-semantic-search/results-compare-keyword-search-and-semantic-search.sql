-- Results
SELECT title, content, pgroonga_score(tableoid, ctid)
  FROM jpug_doc_contents
 WHERE content &@~ pgroonga_condition('Window関数')
 ORDER BY pgroonga_score(tableoid, ctid) DESC LIMIT 3;

SELECT title, content, pgroonga_score(tableoid, ctid)
  FROM jpug_doc_contents
 WHERE content &@* pgroonga_condition('Window関数')
 ORDER BY pgroonga_score(tableoid, ctid) DESC LIMIT 3;
