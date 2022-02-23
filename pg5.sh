filename=$1
if [ -e $filename ]
then 
set -- `ls -ld $filename`
echo "Creation time of $filename is: $6-$7-$8"
else
echo "File doesnot exist"
fi
