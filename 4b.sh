if [ $# -ge 1 ]
then
	if [ $# -eq 2 ]
	then
		sd=$2
	else
		sd="."
	fi
	
	file=$1
	if [ -f $file ]
	then
		
		set -- `ls -i $file`
		inode=$1
		tfiles=`find $sd -inum $inode | wc -l`
		if [ $tfiles -eq 1 ]
		then
			echo "$file has no link files"
		else
			find $sd -inum $inode
			echo "The inode number for $tfiles files is $inode"
		fi
	else
		echo "Give valid file"
	fi
else
	echo "Give atleast one arguement"
fi
