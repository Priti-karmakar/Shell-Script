echo "Enter a year: "
read y
if [ `expr $y % 4` -eq 0 -a `expr $y % 100` -ne 0 -o `expr $y % 400` -eq 0 ]; then
    echo "$y is a leap year"
else
    echo "$y is not a leap year"
fi