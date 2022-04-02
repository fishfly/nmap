FROM alpine:3.14
WORKDIR /
RUN apk add gcc g++ make libffi-dev openssl-dev libtool
RUN apk add autoconf libcrypto1.1 libgcc libpcap libssh2 libssl1.1 libstdc++ lua5.3-libs musl pcre zlib
COPY nmap /home/nmap
COPY beautifulsoup4-4.10.0-py3-none-any.whl /site-packages/beautifulsoup4-4.10.0-py3-none-any.whl
RUN cd /home/nmap && ./configure && make
