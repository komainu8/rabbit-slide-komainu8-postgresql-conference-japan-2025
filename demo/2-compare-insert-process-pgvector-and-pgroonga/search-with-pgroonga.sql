SET enable_seqscan = off;

SELECT content, pgroonga_score(tableoid, ctid)
  FROM contents_for_pgroonga
 WHERE content &@* pgroonga_condition('boy');

SELECT content, pgroonga_score(tableoid, ctid)
  FROM contents_for_pgroonga
 WHERE content &@* pgroonga_condition('dog');

SELECT content, pgroonga_score(tableoid, ctid)
  FROM contents_for_pgroonga
 WHERE content &@* pgroonga_condition('王');

SELECT content, pgroonga_score(tableoid, ctid)
  FROM contents_for_pgroonga
 WHERE content &@* pgroonga_condition('男の子');
