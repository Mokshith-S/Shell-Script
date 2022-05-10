echo "Enter password"
stty -echo
read pass
stty echo
echo "Enter confirm password"
stty -echo
read pass2
stty echo
while [ $pass != $pass2 ]
do
	clear
	echo "Password mismatch, Enter the password again"
	stty -echo
	read pass2
	stty echo
done
