#!/bin/bash
#pengambilan repository
wget https://raw.githubusercontent.com/AlawiStore24/domain/main/pointingtes.sh

#pindah ke /usr/bin/
mv pointingtes.sh /usr/bin/pointing
chmod +x pointing
pointing
