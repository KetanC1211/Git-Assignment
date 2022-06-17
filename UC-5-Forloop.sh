#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
totalSalary=0
numofWorkingDays=20

for (( day=1; day<=$numofWorkingDays; day++ ))
do 
	randomcheck=$((RANDOM%3))
	case $randomcheck in
				$isPartTime )
				empHrs=4
				;;
				$isFullTime )
				empHrs=8
				;;
				*)
				empHrs=0
				;;
	esac
	salary=$(($empHrs*$empRatePerHr))
	totalsalary=$(($totalsalary+$salary))
done

