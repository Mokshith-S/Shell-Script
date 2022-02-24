/* 7a. Write a shell script that gets executed and displays the message either “Good Morning” or
“Good Afternoon” or “Good Evening” depending upon time at which the user logs in. */

h=`date +%H`
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
echo "Good morning Mr./Ms. $U"
elif [ $h -ge 12 ] && [ $h -lt 16 ]
then
echo "Good Afternoon"
elif [ $h -ge 16 ] && [ $h -lt 19 ]
then
echo "Good evening"
else
echo "Goodnight"
fi
