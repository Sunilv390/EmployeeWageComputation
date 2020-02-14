#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM

#CONSTANTS
WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2

#VARIABLE
fullTimeHr=8
partTimeHr=4

#CHECKS DAILYWAGE FOR FULLTIME AND PARTTIME
randomCheck=$((1+RANDOM%2))
if [ $ISFULLTIME -eq $randomCheck ]
then
	dailyWage=$(($fullTimeHr * $WAGE_PER_HR))
	echo "Daily Wage of a Fulltime Employee is $dailyWage"
elif [ $ISPARTTIME -eq $randomCheck ]
then
	dailyWage1=$(($partTimeHr * $WAGE_PER_HR))
	echo "Daily Wage of a Parttime Employee is $dailyWage1"
fi
