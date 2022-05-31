if [ $# -ge 1 ]
then
	for i in $*
	do
		if [ `grep "$i" /etc/passwd | wc -l` -eq 1 ]
		then
			echo "$i exists"
			home=`grep "$i" /etc/passwd | cut -d ":" -f 6`
			echo "Username: $i"
			echo "User Home directory: $home"
		else
			echo "User doesn't exists"
		fi
		echo "------------------------------------"
	done
else
	echo "Give atleast one arguement"
fi
