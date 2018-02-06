#!/bin/bash                                                                                                                                                                                               
# Attempt finding longest thingy                                                                                                                                                                          
y=256;

for ((numb=1;numb<500;numb++))
{
a=$(($RANDOM%$y))
b=$(($RANDOM%$y))
c=$(($RANDOM%$y))
d=$(($RANDOM%$y))
tempIP=$a'.'$b'.'$c'.'$d
traceroute -m 255  $tempIP >> temp$tempIP.txt
head -n 1 temp$tempIP.txt >> allIP.txt;
tail -n 3 temp$tempIP.txt >> allIP.txt ;
echo $tempIP >> allIP.txt;
rm temp$tempIP.txt
#echo $tempIP>> ICMPandTCP.txt                                                                                                                                                                           

}