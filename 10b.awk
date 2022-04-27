BEGIN{
print("No repeated line")

}
{

arr[++i]=$0
++lines
}
END{

for (i=1;i<=lines;i++)
{
counter=0
for (j=1;j<=lines;j++)
{
if (i==j && counter == 0)
{
	counter=1
	printf("%d %s\n",i,arr[i]);
}
else if (arr[i]==arr[j])
	break;
}	
}
}

