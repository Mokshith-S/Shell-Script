for i in `ls`
do
length=`expr length $i`
if [ $length -ge 10 ]
then
echo $i
fi 
done
