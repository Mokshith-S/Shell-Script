<<comment
Write a shell script to list all the files in a directory whose filename is at least 10 characters.
(use expr command to check the length). */
comment

for i in `ls`
do
length=`expr length $i`
if [ $length -ge 10 ]
then
echo $i
fi 
done
