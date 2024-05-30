echo "Enter two number: "
read a b
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modulo"
echo "6.exit"
while [ 1 ]
do
    echo "Enter your choice :"
    read x
    case $x in
    +) res=$(( a+b )) 
       echo "Sum: $res";;
    -) res=$(( a-b )) 
       echo "Subtract: $res";;
    *) res=$(( a*b ))   
       echo "Multiply: $res";;
    /) res=$(( a/b )) 
       echo "Division: $res";;
    %) res=$(( a%b )) 
       echo "Modulo: $res";;
    ) exit
    esac
    echo ""
done