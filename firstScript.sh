#!/bin/bash
# Attempt finding longest thingy
y=256;
x=31;

for ((numb=1;numb<1000000;numb++))
{
a=$((192+$RANDOM%x))
b=$(($RANDOM%y))
c=$(($RANDOM%y))
d=$(($RANDOM%y))
tempIP=$a'.'$b'.'$c'.'$d
if  ping -W 3 -q  -c 1  -b $tempIP
then
traceroute -m 255  $tempIP >> [$a]temp.txt
tail  [$a]temp.txt >> box.txt
rm [$a]temp.txt
else
#FAILED IP  added to failed IP adresses
echo $tempIP>>FAILED_ping.txt

#new IP adress
a=$((192+$RANDOM%x))
b=$(($RANDOM%y))
c=$(($RANDOM%y))
d=$(($RANDOM%y))
tempIP=$a'.'$b'.'$c'.'$d
fi
}


