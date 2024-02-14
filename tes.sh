#!/bin/bash
#pengambilan repository
wget https://raw.githubusercontent.com/AlawiStore24/domain/main/pointingtes.sh
clear
#pindah ke /usr/bin/
mv pointingtes.sh /usr/bin/pointing
clear
#izin akses
cd /usr/bin/
chmod +x pointing
clear
#kembali ke root
cd
rm -rf tes.sh
clear
#meminta persetujuan mulai pointing
read -rp "Tekan [ Enter ] untuk memulai pointing... "
pointing
