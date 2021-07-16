#! /bin/bash -x

echo "Welcome to the Employee Wage Computation"


# Variables
WAGE_PER_HR=20
IS_HALF_TIME=1
IS_FULL_TIME=2
MAX_WORK_DAYS=20
MAX_WORK_HRS=100

totalWorkHr=0
day=1



# Function to get working hrs
function getWorkHrs(){
        local empPresent=$1
        local empHrs=0

        # Selection
        case $empPresent in
                $IS_HALF_TIME) empHrs=4 ;;
                $IS_FULL_TIME) empHrs=8 ;;
                *) empHrs=0 ;;
        esac
        echo $empHrs
}


# Calculate monthly wage till total work hr has reached 100hrs
while [ $day -le $MAX_WORK_DAYS ] && [ $totalWorkHr -lt $MAX_WORK_HRS ]
do

	# Check if Employee is present or not
        empPresent=$(( RANDOM % 3))


	# Determine work hour of the employee
        # Function call
        empHrs="$( getWorkHrs $empPresent )"


        # Calculation total work hour
        totalWorkHr=$(( totalWorkHr + empHrs ))


        # Calculation total salary
	basePay=$(( empHrs * WAGE_PER_HR ))
        salary=$(( basePay + salary ))


	((day++))

done
