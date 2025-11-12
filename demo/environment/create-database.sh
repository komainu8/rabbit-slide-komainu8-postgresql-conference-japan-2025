#!/bin/bash

LD_LIBRARY_PATH=/tmp/local/lib/ /tmp/local/bin/psql \
                              --command 'CREATE DATABASE semantic_search_test'
LD_LIBRARY_PATH=/tmp/local/lib/ /tmp/local/bin/psql \
                              -d semantic_search_test < jpug-doc.sql

