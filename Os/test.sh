echo "Enter marks: "
read n
if [ $n -gt 90 -a $n -le 100 ]; then
    echo "Grade A"
elif [ $n -gt 80 -a $n -le 90 ]; then
    echo "Grade B"
elif [ $n -gt 70 -a $n -le 80 ]; then
    echo "Grade C"
elif [ $n -gt 60 -a $n -le 70 ]; then
    echo "Grade D"
elif [ $n -gt 50 -a $n -le 60 ]; then
    echo "Grade E"
else
    echo "FAIL"
fi