factorial()
{
	n=$1
	if [ $n -le 0 ]
	then 
		echo 1
	else
		echo $(( n * `factorial $(( n-1 ))` ))
	fi
}
series(){
    x=$1
    n=$2
    sum=0
    p=0
    for (( i=1;i<=n;i++ ))
    do
        fact=`factorial $p`
        temp=`echo "scale=4; $x^$p" | bc`
        temp=`echo "scale=4; $temp/$fact" | bc`
        sum=`echo "scale=4; $sum+$temp" | bc`
        p=$(( p+2 ))
    done
    echo "sum = $sum"
}
series $1 $2