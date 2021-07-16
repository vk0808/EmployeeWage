#! /bin/bash -x

echo "Welcome to the Employee Wage Computation"


# Variables
IS_HALF_TIME=1
IS_FULL_TIME=2
WAGE_PER_HR=20

empPresent=$(( RANDOM % 3 ))


# Check if Employee is present or not
case $empPresent in
        $IS_HALF_TIME) empHrs=4 ;;
        $IS_FULL_TIME) empHrs=8 ;;
        *) empHrs=0 ;;
esac

# Calculation
salary=$(( empHrs * WAGE_PER_HR ))
