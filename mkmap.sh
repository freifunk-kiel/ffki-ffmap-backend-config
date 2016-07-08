#!/bin/bash
FFMAPPATH='/opt/ffmap-backend'

cd $FFMAPPATH
python3 $FFMAPPATH/backend.py -d /$FFMAPPATH/json/ --aliases $FFMAPPATH/gateway.json -m bat-ffki:/var/run/alfred.bat-ffki.sock -p 15 --vpn de:ad:be:ef:ff:02 --vpn de:ad:be:ef:ff:03 --vpn de:ad:be:ef:ff:01 --vpn de:ad:be:ef:ff:00

# the file blacklist contains long and latitude values, that should be replaced in the form
# 53.123456, 10.123456/53.456789, 10.456789
# new ffmap-backend: "latitude": 54.30895, "longitude": 10.07595
# therefore two lines for long und lat in blacklist now
#cat blacklist|while read geo ; do if [ "$geo" != "" ]; then sed -i "s/$geo/" json/nodes.json; fi; done

