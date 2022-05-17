BEGIN{
	print("Date Format Conversion")
	print("Enter the date")
	getline dd
	len=length(dd)
	string_month="JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEPT,OCT,NOV,DEC"
	split(string_month,month,",")
	split(dd,date,"-")
	date[2]+=date[2]
	if(len==8)
		date[3]+=2000
	if(len==8 || len==10 && date[1]>0 && date[2]>=1 && date[2]<=12)
	{
		if(date[2]==2)
		{
			if(date[3]%4==0 && date[1]<=29)
				counter=1
			else if(date[3]%4!=0 && date[1]<=28)
				counter=1
		}
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

