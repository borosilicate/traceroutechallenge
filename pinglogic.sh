y=256;
x=31;
a=$((192+$RANDOM%x))
b=$(($RANDOM%y))
c=$(($RANDOM%y))
d=$(($RANDOM%y))
tempIP=$a'.'$b'.'$c'.'$d

if  ping -c 1  -b 8.8.9.7
then
echo "zero"
else


echo  "not zero"
fi