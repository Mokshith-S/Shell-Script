BEGIN{
	FS="|"
	print("EmpID  Name  Designation Department Salary Gross");
}

{
	sno++
	if($5 < 10000)
	{
		da=0.45*$5
		hra=0.15*$5
		gs=$5 + da + hra
	}
	else
	{
		da=0.5*$5
		hra=0.2*$5
		gs=$5 + da + hra
	}

	printf("%d\t%d\t%s\t%s\t%s\t%d\t%d\n",sno,$1,$2,$3,$4,$5,gs);
}

END{
	print("------------------------------------------------------------------------");
}
