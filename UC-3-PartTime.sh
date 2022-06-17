#!/bin/bash -x

#Parttime = a, Fulltiime = b , Absent = x  
a=1
b=2
c=0
empratePerHr=20
randomcheck=$((RANDOM%3))

if [ $a -eq $randomcheck ]
then 
	empHrs=4
elif [ $b -eq $randomcheck ]
then
	empHrs=8
else
	empHrs=0
fi
salary=$(($empHrs*$empratePerHr))
echo $salary
