#!/bin/bash -x

ispresent=1;
ispresenthalf=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));

case $randomcheck in
        $ispresent)
         emphrs=8
         ;;
         $ispresenthalf)
         emphrs=4;
         ;;
         *)
         emphrs=0;
         ;;
esac

Salary=$(($emprateperhr*$emphrs));
echo Salary:$Salary
