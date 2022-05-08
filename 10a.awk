BEGIN{
	print("Date Format Conversion")
	FS="-"
}

{	
	len=length
	string_month="JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEPT,OCT,NOV,DEC"
	split(string_month,month,",")
	split($0,date,"-")
	date[2]=date[2]+0
}

END{
	if(len==10 && date[1]>0 && date[2]>=1 && date[2]<=12)
	{
		if(date[2]==2 && date[1]<=29)
			counter=1
		if(date[2]!=2)
		{
			if(date[2]<=7)
			{
				if(date[2]%2==0)
					if(date[1]<=30)
						counter=1
				else
					if(date[1]<=31)
						counter=1
			}
			else
			{
				if(date[2]%2==0)
					if(date[1]<=31)
						counter=1
				else
					if(date[1]<=30)
						counter=1
			}
		}
		if(counter==1)
			print(month[date[2]]"-"date[1]"-"date[3])
		else
			print("Invalid date")
	}
	else
		print("Invalid date format (dd-mm-yyyy) or Invalid date")
}
