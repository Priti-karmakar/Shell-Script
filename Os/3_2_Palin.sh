palindrome(){
    n=$1
    r=0
    temp=$n
    while [ $temp -ne 0 ]
    do
        digit=$(( temp%10 ))
        r=$(( r*10+digit ))
        temp=$(( temp/10 ))
    done
    if [ $r -eq $n ]; then
        echo "Palindrome"
    else
        echo "Not Palindrome"
    fi
}
echo "Enter the number: "
read n
palindrome $n