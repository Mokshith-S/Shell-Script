if [ $# -eq 1 ]
then
if [ -d $1 ]
then
set -- `ls -lR $1 | grep "^-" | tr -s " " | cut -d " " -f 5,9- | sort -n | tail -n 1`
echo "File name is: $2"
echo "File size is: $1"
else
echo "Give valid directory"
fi 
else
echo "Give argument"
fi
