#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM

#CONSTANTS
WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2
WORKINGDAYS=20

#VARIABLE
totalSalary=0

#CHECKS DAILYWAGE FOR FULLTIME AND PARTTIME USING CASE
for (( day=1; day<=$WORKINGDAYS; day++ ))
do
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
salary=$(($empHrs*$WAGE_PER_HR))
totalSalary=$(($totalSalary+$salary))
done
echo "Total salary of an employee in month is $totalSalary"

