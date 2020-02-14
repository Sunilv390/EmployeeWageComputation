#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM

#CONSTANTS
WAGE_PER_HR=20
ISFULLTIME=1
ISPARTTIME=2

#VARIABLE
fullTimeHr=8
partTimeHr=4

#CHECKS DAILYWAGE FOR FULLTIME AND PARTTIME USING CASE
randomCheck=$((1+RANDOM%2))
case $randomCheck in
	$ISFULLTIME)
		fullTimeSalary=$(($fullTimeHr * $WAGE_PER_HR))
		echo "Employee's Fulltime salary is $fullTimeSalary"
		;;
	$ISPARTTIME)
		partTimeSalary=$(($partTimeHr * $WAGE_PER_HR))
		echo "Employee's Parttime salary is $partTimeSalary"
		;;
	*)
esac
