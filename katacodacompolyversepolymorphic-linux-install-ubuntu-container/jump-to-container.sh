#!/usr/sh

cat << EOF > /tmp/noexit.sh
!/bin/sh
apt-get update && apt-get install -y bash curl
clear
while true ; do script -q -c "/bin/bash -l" /dev/null ; done
EOF

chmod a+x /tmp/noexit.sh

docker run --rm -it -v /tmp/noexit.sh:/noexit.sh ubuntu:xenial /bin/sh /noexit.sh