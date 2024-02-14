#!/bin/bash
#pengambilan repository
wget https://raw.githubusercontent.com/AlawiStore24/domain/main/pointingtes.sh
#pindah ke /usr/bin/
mv pointingtes.sh /usr/bin/pointing
#izin akses
cd /usr/bin/
chmod +x pointing
#kembali ke root
cd
rm -rf tes.sh
#meminta persetujuan mulai pointing
read -rp "Tekan [ Enter ] untuk memulai pointing... "
pointing
