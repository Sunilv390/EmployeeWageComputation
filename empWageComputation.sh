#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM

#CONSTANTS
ISPRESENT=1
WAGE_PER_HR=20
ISFULLTIME=8

#USERINPUT
randomCheck=$((RANDOM%2))
if [ $ISPRESENT -eq $randomCheck ]
then
	echo "Employee is Present "
	dailyWage=$(($ISFULLTIME * $WAGE_PER_HR))
else
	echo "Employee is Absent "
	dailyWage=0
fi
echo "Daily Wage of an Fulltime Employee is $dailyWage "
