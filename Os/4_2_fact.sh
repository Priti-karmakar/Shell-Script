factorial(){
	n=$1
	if [ $n -le 1 ]
	then 
		echo 1
	else
		echo $(( n * `factorial $(( n-1 ))` ))
	fi
}
echo "Enter a number: "
read n
factorial $n