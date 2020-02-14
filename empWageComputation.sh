#!/bin/bash -x

#WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM

#CONSTANTS
ISPRESENT=1

#USERINPUT
randomCheck=$((RANDOM%2))
if [ $ISPRESENT -eq $randomCheck ]
then
	echo "Employee is Present "
else
	echo "Employee is Absent "
fi
