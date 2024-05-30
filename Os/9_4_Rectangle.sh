clear
read -p "Enter the length..." l
read -p "Enter the breadth.." b
x=5
y=5
for(( j=1;j<l;j++ ))
do
	tput cup $y $x
	echo "*"
	x=$((x+2))
done
for(( j=1;j<b;j++ ))
do
	tput cup $y $x
	echo "*"
	y=$((y+1))
done
for(( j=1;j<l;j++ ))
do
	tput cup $y $x
	echo "*"
	x=$((x-2))
done
for(( j=1;j<b;j++ ))
do
	tput cup $y $x
	echo "*"
	y=$((y-1))
done
tput cup 20 0