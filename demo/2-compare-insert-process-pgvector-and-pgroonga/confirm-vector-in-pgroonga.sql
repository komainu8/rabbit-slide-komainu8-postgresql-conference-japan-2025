SELECT pgroonga_command('dump');
SELECT pgroonga_command('select --table Sources57344');
SELECT pgroonga_command('select --table Sources57344')::json->1->0->2;
