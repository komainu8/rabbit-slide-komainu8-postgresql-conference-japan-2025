-- COUNT
SELECT COUNT(*)
  FROM jpug_doc_contents
 WHERE content &@~ pgroonga_condition('Window関数');

SELECT COUNT(*)
  FROM jpug_doc_contents
 WHERE content &@* pgroonga_condition('Window関数');
