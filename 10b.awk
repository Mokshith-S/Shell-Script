BEGIN{
	print("File with only unique lines:")
}	

{
	arr[len++]=$0
}

END{
	for(i=0;i<len;i++)
	{
		for(j=0;j<len;j++)
		{
			if(i==j)
			{
				print(arr[i])
			}
			else if (arr[i]==arr[j])
				break
		}
	}
}
