BEGIN{
	FS="-"
	print("Book sold")
	print("---------------------------")
}

{
	arr[$1] += $2
	total += $2 
}

END{
	for (k in arr)
	{
		printf("%s discipline is %d\n",k,arr[k])
	}
	print("--------------------------")
	printf("Total book sold: %d ",total)
}
