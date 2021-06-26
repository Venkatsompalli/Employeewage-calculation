#!/bin/bash -x

ispresent=1;
randomcheck=$((RANDOM%2));

if [ $ispresent -eq $randomcheck ];

then
      echo Employee is present
      emprateperhr=20;
      emphrs=8;
      salary=$(($emphrs*$emprateperhr));
else
      echo Employee is absent
      salary=0;
fi
