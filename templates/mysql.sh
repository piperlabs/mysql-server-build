 #!/bin/bash
 set -e

cmake . -DWITH_ARCHIVE_STORAGE_ENGINE=1 \
        -DWITH_FEDERATED_STORAGE_ENGINE=1 \
        -DWITH_BLACKHOLE_STORAGE_ENGINE=1 \
        -DMYSQL_DATADIR=/opt/mysql-{{ .product.piper.fullVersion }}/data/ \
        -DCMAKE_INSTALL_PREFIX=/opt/mysql-{{ .product.piper.fullVersion }} \
        -DCURSES_LIBRARY=/usr/lib/libncursesw.a \
        -DCURSES_INCLUDE_PATH=/usr/include/ \
        -DHAVE_LIBAIO_H=/usr/include/ \
        -DINSTALL_LAYOUT=STANDALONE \
        -DENABLED_PROFILING=ON \
        -DMYSQL_MAINTAINER_MODE=OFF \
        -DWITH_DEBUG=OFF \
        -DDEFAULT_CHARSET=utf8 \
        -DENABLED_LOCAL_INFILE=TRUE \
        -DWITH_ZLIB=bundled

make
make package
