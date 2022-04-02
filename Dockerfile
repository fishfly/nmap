FROM python:3.10-alpine3.14
WORKDIR /
RUN apk add gcc g++ make libffi-dev openssl-dev libtool
RUN apk add autoconf libcrypto1.1 libgcc libpcap libssh2 libssl1.1 libstdc++ lua5.3-libs musl pcre zlib
RUN pip install bs4
WORKDIR /usr/local/lib/python3.10/site-packages
RUN mkdir /home/site-packages && mv beautifulsoup4-4.10.0.dist-info /home/site-packages/ && mv bs4 /home/site-packages/ && mv bs4-0.0.1.dist-info /home/site-packages/
WORKDIR /home
COPY nmap /home/nmap
RUN cd /home/nmap && ./configure && make
