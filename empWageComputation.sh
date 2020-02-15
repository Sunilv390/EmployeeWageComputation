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

#FUNCTIONS TO CHECK WORKING HOURS
function getWorkHours() {
	case $1 in
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
	echo $empHrs
}

#FUNCTION FOR CALCULATING DAILY WAGE
function calculateDailyWage() {
local empHrs=$1
wage=$(($empHrs*$WAGE_PER_HR))
echo $wage
}

#CALLING THE FUNCTION USING WHILE
while [[ $totalWorkingHr -lt $WORK_HR_IN_MONTH &&
         $totalWorkingDays -lt $WORKINGDAYS ]]
do
	randomCheck=$((RANDOM%3))
	((totalWorkingDays++))
	empHrs=$( getWorkHours $randomCheck )
	totalWorkingHr=$(($totalWorkingHr+$empHrs))

#STORING DAILYWAGE IN ARRAY
	dailyWage[$totalWorkingDays]=$( calculateDailyWage $empHrs )
done
totalSalary=$(($totalWorkingHr*$WAGE_PER_HR))
echo "Total Working employee hr in a month is $totalWorkingHr"
echo "Total Salary is $totalSalary"
echo "Daily Wage is ${dailyWage[@]} "
