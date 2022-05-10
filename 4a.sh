<<comment 
4a. Write a shell script that accept one or more file names as argument and convert all of them
to uppercase, provided they exists in current directory. */
comment

for i in $*
do
if [ -f $1 ] 
then 
echo "------Contents are------"
cat $i | tr "[a-z]" "[A-Z]"
else
echo "$i file doesnot exist"
fi
done
