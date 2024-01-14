#!/bin/sh
ftp https://swupdate.openvpn.org/community/releases/openvpn-2.6.6.tar.gz

tar zxvf openvpn-2.6.6.tar.gz

cd openvpn-2.6.6

./configure  OPENSSL_LIBS="-L/usr/local/lib/eopenssl32 -Wl,-rpath,/usr/local/lib/eopenssl32 -lssl -lcrypto" \
                          OPENSSL_CFLAGS="-I/usr/local/include/eopenssl32/" --with-crypto-library=openssl \
                          CC="cc" CPPFLAGS="-I/usr/local/include" LDFLAGS="-L/usr/local/lib"
