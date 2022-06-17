#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
totalSalary=0
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0

function getWorkingHrs()
{
       case $randomCheck in
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
}

while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
        randomCheck=$((RANDOM%3))
	getWorkingHrs $randomCheck
totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))




