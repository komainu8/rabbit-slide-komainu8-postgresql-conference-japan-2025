#!/bin/bash

set -uex

for i in `seq 0 4`;do
  /tmp/local/bin/psql -d semantic_search_performance < search.sql
done
