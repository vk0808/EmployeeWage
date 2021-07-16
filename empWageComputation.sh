#! /bin/bash -x

echo "Welcome to the Employee Wage Computation"


# Variables
IS_HALF_TIME=1
IS_FULL_TIME=2
WAGE_PER_HR=20

empPresent=$(( RANDOM % 3 ))



for ((day=1;day<=$MAX_WORK_DAYS;day++))
do

	# Check if Employee is present or not
        empPresent=$(( RANDOM % 3))


	# Determine work hour of the employee
        case $empPresent in
                $IS_HALF_TIME) empHrs=4 ;;
                $IS_FULL_TIME) empHrs=8 ;;
                *) empHrs=0 ;;
        esac


        # Calculation total work hour
        totalWorkHr=$(( totalWorkHr + empHrs ))


        # Calculation total salary
	basePay=$(( empHrs * WAGE_PER_HR ))
        salary=$(( basePay + salary ))
done






# Calculation
salary=$(( empHrs * WAGE_PER_HR ))
