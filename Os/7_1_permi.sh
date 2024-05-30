echo "Enter file: "
read t
if [ -f $t ]; then
    echo "File exists"
    ls -l
    chmod a+w $t
    ls -l
else
    echo "file doesn't exists"
fi