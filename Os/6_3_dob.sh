# echo "Enter dob: "
# read dob
# IFS = "/"
# set $dob
# d=$1
# m=$2
# y=$3
# dd=`date+%d`
# mm=`date+%m`
# yy=`date+%Y`
# year=`expr $yy -$y`
# month=`expr $mm -$m`
# day=`expr $dd -$d`
# if [ $mm -lt 0 ]
# then 
#     month=`expr $month+12`
#     ((year--))
# fi
# if [ $day -lt 0 ]
# then
#     day=`expr $day+30`
#     ((month--))
# fi
# # echo "The age is" $year "year " $month "month" $day "day".


read -p "Enter a date: " dob
IFS="/"
set $dob
d=$1
m=$2
y=$3
dd=`date+%d`
mm=`date+%m`
yy=`date+%Y`
day=$(( dd - d ))
month=$(( mm - m ))
year=$(( yy - y ))
if [ month -lt 0 ]; then
    month=$(( month + 12 ))
    (( year-- ))
fi
if [ day -lt 0 ]; then
    day=$(( day + 30 ))
    (( month-- ))
fi
echo "Present age: $year $month $day"