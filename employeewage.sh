#!/bin/bash -x

ispresent=1;
ispresenthalf=2;
emprateperhr=20;
workingdays=20;
totalworkingdays=0;
totalemphrs=0;
for (( i=1 ; i<=20 ; i++  ))
do
randomcheck=$((RANDOM%3));

case $randomcheck in
        $ispresent)
         emphrs=8;
         ;;
         $ispresenthalf)
         emphrs=4;
         ;;
         *)
         emphrs=0;
         ;;
esac
totalemphrs=$(($totalemphrs+$emphrs));

done

Salary=$(($emprateperhr*$totalemphrs));
echo Salary:$Salary
