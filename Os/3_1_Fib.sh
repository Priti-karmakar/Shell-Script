fibonacci(){
    n=$1
    a=0
    b=1
    echo "Fibonacci series: "
    # if [ $n -eq 1 ]; then
    #     echo "$a"
    # elif [ $n -eq 2 ];  then
    #     echo "$a $b"
    # elif [ $n -ge  3 ]; then
        for((i=0;i<n;i++))
        do
            echo -n "$a "
            c=$((a+b))
            a=$b
            b=$c
        done
    # fi
}

echo "Enter the limit: "
read n
fibonacci $n