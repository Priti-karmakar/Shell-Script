# clear
# insert()
# {
# 	read -p "Enter Roll, Name, and Marks..." roll name marks
# 	echo "$roll |$name |$marks">>student.txt
# }
# display()
# {
# 	cat student.txt
# }
# update(){
# 	read -p "Enter the roll and new marks..." roll data
# 	x=`wc -l<student.txt`
# 	for (( i=1;i<=x;i++ ))
# 	do
# 		y=`head -n $i student.txt|tail -n 1|cut -d\| -f 1`
# 		if [ $roll -eq $y ]
# 		then
# 			val=`head -n $i student.txt|tail -n 1|cut -d\| -f 1,2`
# 			head -n $((i-1)) student.txt>temp.txt
# 			echo "$val|$data">>temp.txt
# 			tail -n $((x-i)) student.txt>>temp.txt
# 			cat temp.txt>student.txt
# 			break
# 		fi
# 	done
# }
# delete()
# {
# 	read -p "Enter the roll..." roll
# 	x=`wc -l<student.txt`
# 	for (( i=1;i<=x;i++ ))
# 	do
# 		y=`head -n $i student.txt|tail -n 1|cut -d\| -f 1`
# 		if [ $roll -eq $y ]
# 		then
# 			head -n $((i-1)) student.txt>temp.txt
# 			tail -n $((x-i)) student.txt>>temp.txt
# 			cat temp.txt>student.txt
# 			break
# 		fi
# 	done
# }
clear
insert(){
	read -p "Enter roll name and marks: " roll name marks
	echo "$roll |$name |$marks">>student.txt 
}
display(){
	cat student.txt
}
#  update(){
# 	read -p "Enter the roll and new marks..." roll data
# 	x=`wc -l<student.txt`
# 	for (( i=1;i<=x;i++ ))
# 	do
# 		y=`head -n $i student.txt|tail -n 1|cut -d\| -f 1`
# 		if [ $roll -eq $y ]
# 		then
# 			val=`head -n $i student.txt|tail -n 1|cut -d\| -f 1,2`
# 			head -n $((i-1)) student.txt>temp.txt
# 			echo "$val|$data">>temp.txt
# 			tail -n $((x-i)) student.txt>>temp.txt
# 			cat temp.txt>student.txt
# 			break
# 		fi
# 	done
# }
update(){
	read -p "Enter roll and new marks: " roll data
	x=`wc -l<student.txt`
	for (( i=1;i<=x;i++ )); do
		y=`head -n $i student.txt|tail -n 1|cut -d\| -f 1`
		if [ $roll -eq $y ]; then
			val=`head -n $i student.txt|tail -n 1|cut -d\| -f 1,2`
			head -n $((i-1)) student.txt>temp.txt
			echo "$val|$data">>temp.txt
			tail -n $((x-i)) student.txt>>temp.txt
			cat temp.txt>student.txt
			break
		fi
	done
}
delete(){
	read -p "Enter roll to be deleted: " roll
	x=`wc -l<student.txt`
	for(( i=1;i<=x;i++ )); do
		y=`head -n $i student.txt | tail -n 1 | cut -d \| -f 1`
		if [ $roll == $y ];	then
			head -n $((i-1)) student.txt>temp.txt
			tail -n $((x-i)) student.txt>>temp.txt
			cat temp.txt>student.txt
			break
		fi
	done
}


while [ 1 ]
do
	printf "1. insert \n"
    printf "2. display \n"
    printf "3. update \n"  
    printf "4. delete \n"
    printf "Any other key to exit...\n " 
    read ch
	case $ch in
		1)insert;;
		2)display;;
		3)update;;
		4)delete;;
		*)exit;;
	esac
done