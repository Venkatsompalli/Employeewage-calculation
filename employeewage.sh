#!/bin/bash -x

isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

totalEmpHr=0;
totalWorkingDays=0;

function getWorkHrs() {
          case $1 in
                  $isFullTime)
                           empHrs=8
                           ;;
                  $isPartTime)
                           empHrs=4
                           ;;
                  *)
                           empHrs=0
                           ;;
          esac
          echo $empHrs;
}

function getEmpWage() {

          echo $(($1*$empRatePerHr))
}

while [[ $totalEmpHrs -lt $maxHrsInMonth &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
           ((totalWorkingDays++))
           empCheck=$((RANDOM%3));
           empHrs="$( getWorkHrs $empCheck )"
           totalEmpHrs=$(($totalEmpHrs+$empHrs))
           dailywage="$( getEmpWage $empHrs )"
           dailyWage[$totalWorkingDays]=$dailywage
done

totalSalary="$( getEmpWage $totalEmpHrs )"
echo ${dailyWage[@]}


