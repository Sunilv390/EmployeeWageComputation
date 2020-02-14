#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM

#CONSTANTS
IS_PRESENT=1

#USERINPUT
randomCheck=$((RANDOM%2))
if [ $IS_PRESENT -eq $randomCheck ]
then
	echo "Employee is Present "
else
	echo "Employee is Absent "
fi
