FROM alpine:latest

ARG PERCONA_TOOLKIT_VERSION
RUN set -x && \
    apk update && \
    apk add perl perl-dbd-mysql curl && \
    apk add --virtual=build make && \
    cd /tmp && \
    curl -o percona-toolkit.tar.gz https://www.percona.com/downloads/percona-toolkit/$PERCONA_TOOLKIT_VERSION/source/debian/percona-toolkit-$PERCONA_TOOLKIT_VERSION.tar.gz && \
    tar zxf percona-toolkit.tar.gz && \
    cd percona-toolkit-* && \
    perl Makefile.PL && \
    make && \
    make install && \
    rm -rf percona-toolkit* && \
    apk del --purge build
