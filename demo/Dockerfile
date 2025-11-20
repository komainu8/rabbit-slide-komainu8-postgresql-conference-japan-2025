FROM postgres:18

RUN apt-get update && apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata
RUN apt-get -y -V install \
  git \
  meson \
  postgresql-server-dev-18 \
  ruby-dev

RUN git clone --recursive https://github.com/groonga/groonga.git /groonga
RUN /groonga/setup.sh
RUN cmake -B /groonga/groonga.build -S /groonga --preset=release-with-debug-info-maximum
RUN cmake --build /groonga/groonga.build
RUN cmake --install /groonga/groonga.build
ENV LD_LIBRARY_PATH=/usr/local/lib

RUN git clone --recursive https://github.com/pgroonga/pgroonga.git /pgroonga
RUN meson setup /pgroonga/pgroonga.build /pgroonga
RUN meson compile -C /pgroonga/pgroonga.build
RUN meson install -C /pgroonga/pgroonga.build

RUN git clone --branch v0.8.1 https://github.com/pgvector/pgvector.git /pgvector
RUN cd /pgvector && make install
