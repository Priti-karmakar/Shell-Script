pattern1(){
    n=$1
    for (( i=1;i<=n;i++ ))
    do
        for (( j=n-i;j>=1;j-- ))
	    do
		    echo -n " "
	    done
	    for (( k=1;k<=2*i-1;k++ ))
	    do
	    	echo -n "*"
	    done
	    echo ""
    done
            
}

pattern2(){
    n=$1
    for (( i=n;i>=1;i-- ))
    do
        for (( j=i;j>=1;j-- ))
        do
            echo -n "*"
        done
        echo ""
    done
}

echo "Enter number of rows: "
read n
pattern1 $n
echo "$n"
pattern2 $n