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
