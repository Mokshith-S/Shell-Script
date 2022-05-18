<<comment
6a. Write s a shell script to find a file/s that matches a pattern given as command line argument
in the home directory, display the contents of the file and copy the file into the directory
~/mydir.
comment


if [ $# -ge 1 ]
then
	if [ ! -e ~/mydir ]
	then
		mkdir ~/mydir
	fi	
	for k in $*
	do
			find $HOME -name "$k">files
			while read line
			do
			
				num=`echo $line | grep -o "/" | wc -l`
				num=`expr $num + 1`
				file=`echo $line | cut -d "/" -f $num`
				cat $line
				echo "--------------------------------------------------------------"
				if [ `ls ~/mydir | grep $file | wc -l` -eq 0 ]
				then
					cp $line ~/mydir 
				fi
			done<files
	done
else
	echo "Give arguments"
fi
