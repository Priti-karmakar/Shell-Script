echo "Enter three numnbers: "
read a b c
if [ $a -gt $b ]; then
    if [ $a -gt $c ]; then
        echo "$a is greater"
    else
        echo "$c is greater"
    fi
else
    if [ $b -gt $c ]; then
        echo "$b is greater"
    else
        echo "$c is greater"
    fi
fi