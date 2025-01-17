# palindrome(){
#     str=$1
#     flg=0
#     len=` echo $str|wc -c `
#     len=$(( len-1 ))
#     l=$len
#     for (( i=1;i<=len/2;i++,l-- ))
#     do
#         a=` echo $str|cut -c $i `
#         b=` echo $str|cut -c $l `
#         if [ $a != $b ]; then
#             flg=1
#             break
#         fi
#     done
#     if [ $flg -ne 1 ]; then
#         echo $str >> palin.txt
#     fi
# }
# clear
# rm palin.txt
# echo "Input file words are"
# for word in $(<words.txt)
# do
#     echo $word>temp.txt
#     if grep -E '\.$|\;$|\,$' temp.txt
#     then
#         count=`wc -c<temp.txt`
#         count=$(( count-2 ))
#         word=`cut -c 1-$count temp.txt`
#     fi
#     palindrome $word
# done
# echo -e "\nPalindrome words are"
# cat palin.txt


# palindrome(){
#     str=$1
#     len=` echo $str|wc -c `
#     len=$(( len-1 ))
#     l=$len
#     flg=0
#     for (( i=1;i<=len/2;i++,l-- ))
#     do
#         a=` echo $str|cut -c $i `
#         b=` echo $str|cut -c $l `
#         if [ $a != $b ]; then
#             flg=1
#             break
#         fi
#     done
#     if [ $flg -ne 1 ]; then
#             echo $str >> palin.txt
#         fi
# }

# clear
# rm palin.txt
# echo "Input words are: "
# for word in $(<words.txt); do
#     echo $word>temp.txt
#     if grep -E '\.$|\,$|\;$' temp.txt
#     then
#         count=`wc -c<temp.txt`
#         count=$(( count-2 ))
#         word=`cut -c 1-$count temp.txt`
#     fi
#     palindrome $word
# done

# echo -e "Palindrome words are"
# cat palin.txt











palindrome(){
    str=$1
    flg=0
    len=`echo $str|wc -c`
    len=$(( len-1 ))
    l=$len
    for (( i=1;i<=len/2;i++,l-- )); do
        a=`echo $str|cut -c $i`
        b=`echo $str|cut -c $l`
        if [ $a != $b ]; then
            flg=1
            break
        fi
    done
    if [ $flg != 1 ]; then
        echo $str>>palin.txt
    fi

}

clear
rm palin.txt
for word in $(<words.txt)
do
    echo $word>temp.txt
    if grep -E '\.$|\,$|\;$' temp.txt
    then
        count=`wc -c<temp.txt`
        count=$(( count-2 ))
        word=`cut -c 1-$count temp.txt`
    fi
    palindrome $word
done

cat palin.txt