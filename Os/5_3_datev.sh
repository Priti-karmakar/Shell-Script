echo "Enter the date"
day=$1
mon=$2
year=$3
case $mon in
1|3|5|7|9|11) if [ $day -ge 1 -a $day -le 31 ];then
echo "valid date"
else
echo "Not Valid"
fi;;
2) if [ $((year%4)) -eq 0 -a $((year%100)) -ne 0 -o $((year%400)) -eq 0 ];then
if [ $day -ge 1 -a $day -le 29 ];then
echo "valid date"
fi
elif [ $day -ge 1 -a $day -le 28 ];then
echo "VALID DATE"
else
echo "Not Valid"
fi;;
4|6|8|10|12) if [ $day -ge 1 -a $day -le 30 ];then
echo "valid date"
else
echo "Not Valid"
fi
;;
*)exit;;
esac