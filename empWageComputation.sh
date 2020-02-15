#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM

#CONSTANTS
WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2
WORKINGDAYS=20
WORK_HR_IN_MONTH=100

#VARIABLE
totalEmpHr=0
totalWorkingDays=0

#CHECKS TOTAL EMPLOYEE HRS IN A MONTH
while [[ $totalEmpHr -lt $WORK_HR_IN_MONTH &&
			$totalWorkingDays -lt $WORKINGDAYS ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$ISFULLTIME)
			empHrs=8
			;;
		$ISPARTTIME)
			empHrs=4
			;;
		*)
		empHrs=0
			;;
	esac
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$WAGE_PER_HR))
echo "Total employee hr in a month is $totalEmpHr"
echo "Total Salary is $totalSalary"
