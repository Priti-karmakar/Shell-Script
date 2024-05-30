echo -----------------------
echo "Calculate Electricity charge"
echo -----------------------
echo "Enter the unit" 
read unit
if [ $unit -gt 0 -a $unit -le 50 ]; then
    charge=$(( unit*75/100 ))
    echo $charge
elif [ $unit -gt 50 -a $unit -le 150 ]; then
    charge=$((( unit-50)*130/100+50*75/100 ))
    echo $charge
elif [ $unit -gt 150 -a $unit -le 250 ]; then
    charge=$((( unit-150 )*145/100+50*75/ 100+100*130/100))
    echo $charge
elif [ $unit -gt 250 ]; then
    charge=$((( unit-250 )*155/100+50*75/100+100"130/100+100*145/100))
    echo $charge
fi
t=$(($charge*125/100))
echo -----------------------
echo "Electricity Billing"
echo -----------------------
echo "Unit: $unit"
echo "Charge: $t"