#!/usr/bin/bash

#Warna
b='\e[1;34m' #blue
g='\e[1;32m' #green
p='\e[1;35m' #purple
c='\e[1;36m' #cyan
r='\e[1;31m' #red
w='\e[1;37m' #white
y='\e[1;33m' #yellow

banner(){
clear
printf "
$r┻┳|$g―-∩       $c  (DUMPER)
$r┳┻|$g　　ヽ   $y Author: Mr.Kira
$r┻┳|$g　●   |  $y Team : TEAM Zodiac Perfect Hunter
$r┳┻|$g▼) _ノ   $y Github : github.com/kirazetsu
$r┻┳|$g￣　)
$r┳ﾐ$g(￣ ／            Priv8 Tools Update
$r┻┳T$g￣     Warning !!!!! Di Larang Keras Sambil
                                   (NGOCOK GBLK)
"                                          
}
menu(){
printf "$c [+] Pilih ? [+]
$y[1]$p Dump China
$y[2]$p Dump Indonesia
$y[3]$p Histori Top-Up
"
}
banner
menu
read -p "=> " pa

if [ $pa = 1 ]||[ $pa = satu ];
then
read -p "Target Telepon ?=> 13" telepon
read -p "Jumlah User Online : " nama
read -p "Jumlah Top-Up Pertama : " total
read -p "Jumlah Top-Up Kemarin (terakhir topup) : " total
read -p "Target Website : " web
read -p "Jumlah (unlimited) : " jumlah
read -p "save file : " output
count=1
while [ $count -le $jumlah ]
do
printf "+86$RANDOM$telepon  [+]Total Online => $RANDOM$nama  [+]Jumlah Top-Up Pertama => $RANDOM$total  [+]Jumlah Top-Up Kemarin => $RANDOM$total  [+]Website => $web\n" >> $output
echo "[$count] Dumper => $output"
sleep 000.1;
(( count++ ))
done
echo "[+] Berhasil Membuat File [+]"
echo -e $g "  (-) $output (-)"
exit

elif [ $pa = 2 ]||[ $pa = dua ];
then
read -p "Target Telepon ?=> +62" telepon
read -p "Jumlah User Online : " nama
read -p "Jumlah Top-Up Pertama : " total
read -p "Jumlah Top-Up Kemarin (terakhir topup) : " total
read -p "Target Website : " web
read -p "Jumlah (unlimited) : " jumlah
read -p "save file : " output
count=1
while [ $count -le $jumlah ]
do
printf "+62$RANDOM$telepon  [+]Total Online => $RANDOM$nama  [+]Jumlah Top-Up Pertama => $RANDOM$total  [+]Jumlah Top-Up Kemarin => $RANDOM$total  [+]Website => $web\n" >> $output
echo "[$count] Dumper => $output"
sleep 000.1;
(( count++ ))
done
echo "[+] Berhasil Membuat File [+]"
echo -e $g "  (-) $output (-)"
exit

else
read -p "Cek Histori Top-Up ?=> " china
read -p "Nama Kota ?=> " kota
read -p "Jumlah (1-9999) ?=> " jumlah
read -p "Output (fake.txt) ?=> " output
count=1
while [ $count -le $jumlah ]
do
printf "$RANDOM$china.$kota\n" >> $output
echo "[$count] Dumper => $output"
sleep 000.1;
(( count++ ))
done
echo "[+] Berhasil Membuat File [+]"
echo -e $g "  (-) $output (-)"
exit

fi

