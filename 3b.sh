echo "Enter the password"
stty -echo
read p1
stty -echo
echo "Confirm password"
stty -echo
read p2
stty -echo
while [ "$p1" != "$p2" ]
do
echo "Re enter the correct password "
stty -echo
read p2
stty -echo
done
clear
echo "-------------------------Terminal Locked-----------------------------"
echo " Enter the password to unlock"
stty -echo
read p3
stty -echo
while [ "$p1" != "$p3" ]
do
clear
echo "--------------------------Terminal Locked-----------------------------"
echo "Password does not match"
echo "Enter the correct password"
stty -echo
read p3
stty echo
done
clear
echo "--------------------------Terminal Unlocked---------------------------"
clear
