if [ -e $1 ]
then
set -- `ls -ld $1`
echo "Permission are: $1"
echo "Files link count is: $2"
echo "User: $3"
echo "Group: $4"
echo "File size: $5"
echo "File modification time: $6-$7-$8"
echo "File name: $9"
else
echo "File doesnot exist"
fi

