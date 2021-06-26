#!/bin/bash -x

ispresent=1;
ispresenthalf=2;
emprateperhr=20;
maxworkingdays=20;
maxemphrs=100;
totalworkingdays=0;
totalemphrs=0;

declare -A dailywage

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

echo $emphrs
}


function getempwage() {
  local emphr=$1
  echo $(($emphr*$emprateperhr))
}


while [[ $totalworkingdays -lt $maxworkingdays && $totalemphrs -lt $maxemphrs  ]]
do
((totalworkingdays++))
empcheck=$((RANDOM%3));
emphrs="$( getworkhours $empcheck)"
totalemphrs=$(($totalemphrs+$emphrs));
dailywage["totalworkingdays"]="$( getempwage $emphrs )"
done

Salary=$(($emprateperhr*$totalemphrs));

echo ${dailywage[@]}

