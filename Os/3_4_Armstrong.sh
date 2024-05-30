armstrong(){
    n=$1
    sum=0
    len=0
    temp=$n
    while [ $n -gt 0 ]
    do
        n=$((n/10))
        len=$((len+1))
    done
    n=$temp
    while [ $temp -gt 0 ]
    do
        digit=$((temp%10))
        sum=$((sum+digit**len))
        temp=$((temp/10)) 
    done
    if [ $sum -eq $n ]
    then
        echo "$n is an armstrong number"
    else
        echo "$n is not an armstrong number"
    fi
}

echo "Enter a number: "
read n
armstrong $n