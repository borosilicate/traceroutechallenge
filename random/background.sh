#!/bin/bash
# Attempt finding longest thingy                                                                                                                                
y=256;
for ((numb=1;numb<100;numb++))
{
a=$(($RANDOM%y))
b=$(($RANDOM%y))
c=$(($RANDOM%y))
d=$(($RANDOM%y))
tempIP=$a'.'$b'.'$c'.'$d
if  ping -W 3 -q  -c 1  -b $tempIP
then 
echo $tempIP>> goodping.txt
traceroute -m 255  $tempIP >> $a.$b.$c.$d.txt                                                                                                                                                        
tail -n 5 $a.$b.$c.$d.txt >> end$a.$b.$c.$d.txt
echo $tempIP >> LOOK.txt
head -n 2 end$a.$b.$c.$d.txt >> LOOK.txt
tail -n 3 end$a.$b.$c.$d.txt >> LOOK.txt
lastLineNumb=$(awk  '{print $1}' end$a.$b.$c.$d.txt); 
lastLineNumb=${lastLineNumb%?};

#FINISHED LESS THAN 25
if (($lastLineNumb<30))
then
echo $tempIP >>LT30.txt
end$a.$b.$c.$d.txt>>LT30.txt
head -n 1 $a.$b.$c.$d.txt >>  ip3LinesLOW.txt
tail -n 3  $a.$b.$c.$d.txt >> ip3LinesLOW.txt
echo $tempIP>> ip3Lines.txt
rm $a.$b.$c.$d.txt
rm end$a.$b.$c.$d.txt
else
echo $tempIP >>GT30.txt
end$a.$b.$c.$d.txt>>GT30.txt
head -n1 end$a.$b.$c.$d.txt >>hIGHip3Lines.txt
tail -n5  end$a.$b.$c.$d.txt >>hIGHip3Lines.txt
echo $tempIP>> ip3LinesHIGH.txt
rm $a.$b.$c.$d.txt
rm end$a.$b.$c.$d.txt
fi
#end of if ping passes
else
#FAILED IP  added to failed IP adresses                                                                                                                                                                 
echo $tempIP >>FAILED_ping.txt
#traceroute -m 2 >> TRACETRASH.txt 
#new IP adress                                                                                                                                                                                         
fi
}