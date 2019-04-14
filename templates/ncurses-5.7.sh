 #!/bin/bash
 set -e

./configure --prefix=/usr \
            --with-shared \
            --without-debug \
            --without-ada \
            --enable-widec \
            --enable-overwrite
make
make install
