echo "Enter size of the array: "
read n
echo "Enter elements: "
for (( i=0;i<n;i++ ))
do
    read arr[$i]
done
echo "Enter the element to be searched: "
read item
c=0
for (( i=0;i<n;i++ ))
do
    if [ ${arr[i]} -eq $item ]; then
        c=1
        echo "$item is found at index $i"
    fi
done
if [ $c -eq 0 ]
then 
    echo "$item not found"
fi
