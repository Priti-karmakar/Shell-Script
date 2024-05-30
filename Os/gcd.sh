evaluateGcdLcm(){
    a=$1
    b=$2
    temp=$((a*b))
    echo $a $b $temp
    while [ 1 ]
    do
        if [ $a -eq 0 ]; then
            echo "Hi"
            gcd=$b
            break
        else
            t=$a
            a=$((b%a))
            b=$t
        fi
    done
    echo "GCD: $gcd"
    lcm=$((temp/gcd))
    echo "LCM: $lcm"
}

echo "Enter two numbers: "
read a b
evaluateGcdLcm $a $b