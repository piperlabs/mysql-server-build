 #!/bin/bash
 set -e
 
echo PATH=$PATH
./configure
make
make install
