# area(){
#     a=$1
#     b=$2
#     c=$3
#     s=`echo "scale=4; $a+$b+$c" | bc`
#     s=`echo "scale=4; $s/2" | bc`
#     area=`echo "scale=4; $s*($s-$a)*($s-$b)*($s-$c)" | bc`
#     area=`echo "scale=4; sqrt($area)" | bc`
#     echo $area
# }
# triangle(){
#     a=$1
#     b=$2
#     c=$3
#     if [ $(( a+b )) -gt $c -a $(( b+c )) -gt $a -a $((  a+c )) -gt $b ]
#     then 
#         area $a $b $c
#     else
#         echo "Invalid triangle"
#     fi
# }

# triangle $1 $2 $3


area(){
    a=$1
    b=$2
    c=$3
    if [ $(( a+b )) -gt $c -a $(( b+c )) -gt $a -a $(( c+a )) -gt $a ]; then
        s=`echo "scale=3; $a+$b+$c" | bc`
        s=`echo "scale=3; $s/2" | bc`
        area=`echo "scale=3; $s*($s-$a)*($s-$b)*($s-$c)" | bc`
        area=`echo "scale=3; sqrt($area)" | bc`
        echo $area
    else
        echo "Invalid"
    fi
}

area $1 $2 $3












