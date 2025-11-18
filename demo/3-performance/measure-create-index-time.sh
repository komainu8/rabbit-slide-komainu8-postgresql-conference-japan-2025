#!/bin/bash

set -uex

for i in `seq 0 4`;do
  time /tmp/local/bin/psql -d semantic_search_performance < create-index.sql
done
