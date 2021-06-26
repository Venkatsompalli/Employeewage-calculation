#!/bin/bash -x

ispresent=1;
ispresenthalf=2;
emprateperhr=20;
maxworkingdays=20;
maxemphrs=100;
totalworkingdays=0;
totalemphrs=0;

while [[ $totalworkingdays -le $maxworkingdays && $totalemphrs -le $maxemphrs  ]]
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
totalworkingdays=$(($totalworkingdays+1));
done

Salary=$(($emprateperhr*$totalemphrs));
echo Salary:$Salary
