if [ $# -eq 1 ]
then
grep $1 /etc/passwd > temp 
if [ $? -eq 0 ]
then
echo "user exists"
p=`grep $1 /etc/passwd | cut -d ":" -f 1,5`
echo "User: $1"
echo "User Home directory: $2"
else
echo "User doesn't exists"
fi
else
echo "Give argument"
fi
