# # clear
# # read -p "Enter the radius..." r
# # # for (( i=0;i<360;i=i+5 ))
# # # do
# # #     l=`echo "scale=4; 3.14 / 180 * $i"|bc|awk '{print cos($1)}'`
# # #     m=`echo "scale=4; 3.14 / 180 * $i"|bc|awk '{print sin($1)}'`
# # #     x=`echo "scale=4; $l * $r"|bc|awk '{print int($1)}'`
# # #     y=`echo "scale=4; $m * $r"|bc|awk '{print int($1)}'`
# # #     x=`expr $x + 10`
# # #     y=`expr $y + 10`
# # #     tput cup $y $x
# # #     printf "*"
# # #     echo
# # # done


# # for (( i=0;i<360;i=i+5 )); do
# #     th1=`echo "scale=4; 3.14/180 * $i"|bc|awk '{print cos($1)}'`
# #     th2=`echo "scale=4; 3.14/180 * $i"|bc|awk '{print sin($1)}'`
# #     x=`echo "scale=4; $th1 * $r"|bc|awk '{print int($1)}'`
# #     y=`echo "scale=4; $th2* $r"|bc|awk '{print int($1)}'`
# #     x=$((x+10))
# #     y=$((y+10))
# #     tput cup $y $x
# #     printf "*"
# #     echo
# # done















# read -p "Enter side: " s
# x=10
# y=10
# for (( i=1;i<s;i++ )); do
#     tput cup $y $x
#     printf "*"
#     x=$((x+2))
# done
# for (( i=1;i<s;i++ )); do
#     tput cup $y $x
#     printf "*"
#     y=$((y+1))
# done
# for (( i=1;i<s;i++ )); do
#     tput cup $y $x
#     printf "*"
#     x=$((x-2))
# done
# for (( i=1;i<s;i++ )); do
#     tput cup $y $x
#     printf "*"
#     y=$((y-1))
# done
# tput cup 20 0


read -p "Enter side : " s
x=30
y=5
for (( i=1;i<=s;i++ )); do
    tput cup $y $x
    printf "*"
    x=$((x+2))
    y=$((y+1))
done
x=30
y=5
for (( i=1;i<=s;i++ )); do
    tput cup $y $x
    printf "*"
    x=$((x-2))
    y=$((y+1))
done
for (( i=1;i<4*s+1;i++ )); do
    tput cup $y $x
    printf "*"
    x=$((x+1))
done
tput cup 30 5