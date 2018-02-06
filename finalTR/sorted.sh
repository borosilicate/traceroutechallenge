#FINAL random mass search
y=256
for ((numb=1;numb<50;numb++))
{
a=$(($RANDOM%$y))
b=$(($RANDOM%$y))
c=$(($RANDOM%$y))
d=$(($RANDOM%$y))
#tempIP=$a'.'$b'.'$c'.'$d
tempIP=219.$b'.'$c'.'$d 
if  ping -W 3 -q  -c 1  -b $tempIP
then
traceroute -q 1 -m 255 $tempIP  >> where$tempIP.txt
tail -n 1 where$tempIP.txt>> end$tempIP.txt
if (grep $tempIP  end$tempIP.txt) 
then
hops=$( awk  '{print $1}' end$tempIP.txt)
echo $tempIP >> hops$hops.txt
tail -n 1 end$tempIP.txt>>hops$hops.txt
tail -n 5 where$tempIP.txt >> hops.$hops@t$tempIP.txt
fi
echo $tempIP >> hugeThing.txt
tail -n 4  where$tempIP.txt >>hugeThing.txt
rm end$tempIP.txt
rm where$tempIP.txt
fi
#echo "false" ; 
}