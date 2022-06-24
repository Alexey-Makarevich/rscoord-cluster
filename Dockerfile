FROM redis:7.0.2 AS builder

RUN  \
    apt-get update && \
    apt-get install -y \
    git \
    make

COPY ./RediSearch /usr/src/RediSearch

WORKDIR /usr/src/RediSearch

RUN make setup COORD=oss NO_TESTS=1 SLOW=1 VERBOSE=1

RUN make build COORD=oss NO_TESTS=1 SLOW=1 VERBOSE=1

RUN mkdir -p "/usr/lib/redis"
RUN cp bin/linux-x64-release/coord-oss/module-oss.so* /usr/lib/redis

CMD ["redis-server", "--loadmodule", "/usr/lib/redis/module-oss.so"]

