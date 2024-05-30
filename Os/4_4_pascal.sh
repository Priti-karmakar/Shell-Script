echo "enter number of rows : "
read n
coef=1
for (( i=0;i<n;i++ ))
do
  for (( j=1;j<=n-i;j++ ))
  do
    echo -n "  "
  done
  for (( j=0;j<=i;j++ ))
  do
    if [ $j -eq 0 -o $i -eq 0 ]
    then
        coef=1;
    else
        coef=$((coef*(i-j+1)/j))
    fi
    echo -n $coef "   "
  done
  echo
done