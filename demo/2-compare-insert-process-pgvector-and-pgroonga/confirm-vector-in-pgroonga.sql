SELECT
  pgroonga_command(
    'select',
    ARRAY[
      'table', t.table_name,
      'output_columns', 'content,content_code',
      'output_pretty', 'yes'
    ])
FROM (
  SELECT
    split_part(cmd, ' ', 2) AS table_name
  FROM (
    SELECT
      regexp_split_to_table(
        pgroonga_command('dump', ARRAY['dump_records', 'no']),
        '\n'
      ) AS cmd
  ) AS c
  WHERE cmd LIKE 'table_create%Sources%'
) AS t;
