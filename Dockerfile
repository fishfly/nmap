FROM python:3.10-alpine3.14
WORKDIR /
RUN apk add gcc g++ make libffi-dev openssl-dev libtool
RUN apk add autoconf libcrypto1.1 libgcc libpcap libssh2 libssl1.1 libstdc++ lua5.3-libs musl pcre zlib
RUN pip install bs4
RUN pip install xmltodict
WORKDIR /home
# COPY typical.xml /tmp/typical.xml
COPY nmap /home/nmap
RUN cd /home/nmap && ./configure && make
