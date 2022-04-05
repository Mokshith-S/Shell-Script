<<comment
7a. Write a shell script that gets executed and displays the message either “Good Morning” or
“Good Afternoon” or “Good Evening” depending upon time at which the user logs in. */
comment

set -- `who`
user=$1
set -- `echo $4 | tr ";" " "`
h=`date +%H`
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
echo "Good Morning $user"
elif [ $h -ge 12 ] && [ $h -lt 16 ]
then
echo "Good Afternoon $user"
elif [ $h -ge 16 ] && [ $h -lt 19 ]
then
echo "Good Evening $user"
else
echo "Good  Night $user"
fi
