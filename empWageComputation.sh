#! /bin/bash -x

echo "Welcome to the Employee Wage Computation"


# Variable
IS_PRESENT=1
WAGE_PER_HR=20
empPresent=$(( RANDOM % 2))


# Check if Employee is present or not
if [ $empPresent -eq $IS_PRESENT ] ;
then
        empHrs=8
else
        empHrs=0
fi

# Calculation
salary=$(( empHrs * WAGE_PER_HR ))
