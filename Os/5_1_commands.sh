echo "1.check the file in the directory"
echo "2.know your present working directory"
echo "3.who is currently logged in"
echo "4.process of your system"
echo "5.exit"
while [ 1 ]
do
    echo "Enter your choice :"
    read x
    case $x in
    1) ls ;;
    2) pwd ;;
    3) who i am;;
    4) ps ;;
    6) date ;;
    7) date '+ %X' ;;
    5) exit
    esac
done