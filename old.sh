#! /bin/bash

read age
var_1=$(echo "$age" | grep -o old)
if [ $var_1 = "old" ]
  then 
  echo "I am 22 !"
  else
  echo "KO"
fi
