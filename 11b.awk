BEGIN{
	FS="|"
	print("Sno\tEmpID\t Name\t\t Designation\t Department\t\tSalary\tGross");
	print("---------------------------------------------------------------------------------------------------------------------");
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
	tsal+=$5
	thra+=hra
	tgs+=gs
	tda+=da
	printf("%d\t%d\t%s\t%s\t%s\t%d\t%d\n",sno,$1,$2,$3,$4,$5,gs);
}

END{
	printf("\t\t\tTotal Salary: %d\n\t\t\tTotal HRA: %d\n\t\t\tTotal DA: %d\n\t\t\tTotal Gross: %d\n",tsal,thra,tda,tgs)
}
