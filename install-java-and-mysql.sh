#!/bin/sh

wget -c http://mirrors.linuxeye.com/oneinstack-full.tar.gz
tar xzf oneinstack-full.tar.gz
sed -i 's@/data@/mnt@g' oneinstack/options.conf
PASS=`date +%s | sha256sum | base64 | head -c 10 ; echo`
./oneinstack/install.sh --jdk_option 2 --db_option 2 --dbinstallmethod 1 --dbrootpwd ${PASS}
