#! /bin/bash -x

echo "Welcome to the Employee Wage Computation"


# Variables
IS_HALF_TIME=1
IS_FULL_TIME=2
WAGE_PER_HR=20

empPresent=$(( RANDOM % 3 ))


# Check if Employee is present or not
if [ $empPresent -eq $IS_FULL_TIME ] ; then
        empHrs=8
elif [ $empPresent -eq $IS_HALF_TIME ]; then
        empHrs=4
else
        empHrs=0
fi


# Calculation
salary=$(( empHrs * WAGE_PER_HR ))
