FROM alpine:3.14
WORKDIR /home/
RUN apk add gcc g++ make libffi-dev openssl-dev libtool
RUN apk add autoconf libcrypto1.1 libgcc libpcap libssh2 libssl1.1 libstdc++ lua5.3-libs musl pcre zlib
COPY nmap ./nmap
RUN cd nmap && ./configure && make
