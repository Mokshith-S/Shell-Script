if [ $# -eq 3 ]
then
if [ -f $1 ]
then
if [ $2 -le $3 ]
then
cat $1 | head -n $3 | tail +$2
else
echo "Invalid range"
fi
else
echo "$1 doesn't exist"
fi
else
echo "Give three parameters \n1:Filename \n2:Starting line\n3:Ending line"
fi
