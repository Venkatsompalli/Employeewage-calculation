#!/bin/bash -x

ispresent=1;
ispresenthalf=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));

if [ $ispresent -eq $randomcheck ];

then
      echo Employee is present
      emphrs=8;
      salary=$(($emphrs*$emprateperhr));
elif [ $ispresenthalf -eq $randomcheck ];
then
      echo Employee is present Halfday
      emphrs=4;
      salary=$(($emphrs*$emprateperhr));
else
      echo Employee is absent
      salary=0;
fi
