#!/bin/bash

## Download
wget https://ftp.postgresql.org/pub/source/v18.0/postgresql-18.0.tar.bz2
tar xf postgresql-18.0.tar.bz2
rm -f postgresql-18.0.tar.bz2
git clone --recursive https://github.com/groonga/groonga.git
git clone --recursive https://github.com/pgroonga/pgroonga.git

## Create build directory
mkdir -p build-dir/postgresql-18.0
mkdir -p build-dir/groonga
mkdir -p build-dir/pgroonga

## Build Groonga
rm -rf build-dir/groonga/*
cmake \
    -Sgroonga \
    -Bbuild-dir/groonga \
    --preset=release-maximum \
    --fresh \
    -DCMAKE_INSTALL_PREFIX="/tmp/local" \
    -DGRN_WITH_MRUBY=ON
cmake --build build-dir/groonga
cmake --install build-dir/groonga

## Build PostgreSQL
meson setup \
      --prefix=/tmp/local \
      build-dir/postgresql-18.0 \
      postgresql-18.0
meson compile -C build-dir/postgresql-18.0
meson install -C build-dir/postgresql-18.0

## Build PGroonga
meson setup \
      --prefix=/tmp/local \
      build-dir/pgroonga \
      -Dpg_config=/tmp/local/bin/pg_config
meson compile -C build-dir/pgroonga
meson install -C build-dir/pgroonga

## Startup PostgreSQL Server
rm -rf /tmp/local/var/lib/postgresql && \
mkdir -p /tmp/local/var/lib/postgresql &&
/tmp/local/bin/initdb \
    --locale C \
    --encoding UTF-8 \
    --set=enable_partitionwise_join=on \
    --set=max_prepared_transactions=1 \
    --set=random_page_cost=0 \
    -D /tmp/local/var/lib/postgresql && \
LD_LIBRARY_PATH=/tmp/local/lib/ /tmp/local/bin/postgres -D /tmp/local/var/lib/postgresql &
