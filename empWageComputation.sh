#! /bin/bash -x

echo "Welcome to the Employee Wage Computation"


# Variable
IS_PRESENT=1
empPresent=$(( RANDOM % 2))


# Check if Employee is present or not
if [ $empPresent -eq $IS_PRESENT ] ;
then
        echo "Employee is present"
else
        echo "Employee is absent"
fi
