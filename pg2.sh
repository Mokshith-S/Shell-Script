echo -n "Enter the first file name: "
read file1
if [ -e $file1 ]
then 
set -- `ls -ld $file1`
per1=$1
else
echo "$file1 doesnot exist"
fi
echo -n "Enter the second file name: "
read file2
if [ -e $file2 ]
then 
set -- `ls -ld $file2`
per2=$1
else
echo "$file2 doesnot exist"
fi
if [ $per1 = $per2 ]
then
echo " File permission are identical"
echo "File permission is $per1"
else
echo "File permission are not identical"
echo "$file1 permission is $per1"
echo "$file2 permission is $per2"
fi
