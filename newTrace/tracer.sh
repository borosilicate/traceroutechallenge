#!/bin/bash                                                                                                                                                                
# Attempt finding longest thingy                                                                                                                                           
y=256;
x=31;

for ((numb=1;numb<10;numb++))
{
#newIP
#a=$((192+$RANDOM%x))
#b=$(($RANDOM%y))
c=$(($RANDOM%y))
d=$(($RANDOM%y))
temperIP=212'.'41'.'$c'.'$d
if  ping -W 3 -q  -c 1  -b $temperIP
then
traceroute -m 130  $temperIP >> [$c][$d]temp.txt
tail  [$c][$d]temp.txt >> box.txt
 [$c][$d]temp.txt
else
#FAILED IP  added to failed IP adresses                                                                                                                                   
echo $tempIP>>FAILED_ping.txt

fi
}