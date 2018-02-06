#!/bin/bash                                                                                                                                                           
#Okay so this program takes the first number 
#
#
#
#
for ((numb=$1;numb<$2;numb++))
{
line=$numb!d
tempID=$(sed $line ICMPandTCP.txt)
# tempID= tr -d [:cntrl:] $tempID
traceroute -m 60  $tempID  >> $1.txt 
 echo $tempID >> $1temp.txt 
}