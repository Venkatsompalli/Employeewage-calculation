#!/bin/bash -x

ispresent=1;
ispresenthalf=2;
emprateperhr=20;
maxworkingdays=20;
maxemphrs=100;
totalworkingdays=0;
totalemphrs=0;

function getworkhours() {

case $1 in
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
}

while [[ $totalworkingdays -le $maxworkingdays && $totalemphrs -le $maxemphrs  ]]
do
((totalworkingdays++))
getworkhours $((RANDOM%3))
totalemphrs=$(($totalemphrs+$emphrs));
done

Salary=$(($emprateperhr*$totalemphrs));
echo Salary:$Salary
