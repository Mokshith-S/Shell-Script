BEGIN{
FS="-"
}

{
split($0,arr,"-")
string="JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEPT,OCT,NOV,DEC"
split(string,arr1,",")
}

END{
if (arr[2] > 0 && arr[2] <= 12)
{
if (arr[2] ==  2 && arr[1] < 30)
counter = 1

else if (arr[2] <= 7)
{
if (arr[2]%2 != 0 && arr[1] <= 31) 
counter = 1
else if (arr[1] <= 30)
counter = 1
}
else
{
if (arr[2]%2 != 0 && arr[1] <= 30) 
counter = 1
else if (arr[1] <= 31)
counter =1
}
if (counter == 1)
{
for(k=1; k<13;k++)
{
if (arr[2] == k)
printf("%s-%d-%d",arr1[k],arr[1],arr[3])
}
}
else
print("Invalid date")
}
else
print("Invalid date")

}
