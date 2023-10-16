#!/bin/bash
echo "please enter name"
read  name
echo "please enter department"
read department
echo "please enter salary"
read salary
echo "please enter country"
read country
date="date +'%d/%m/%y'-'%T'"
action=1
echo $name"    ""$department""     $salary""      $country""     ${name:0:3}"-"$($date)"
echo "Is the information provided correct?(1)"
read action
if [ $action -eq 1 ]
then 
echo $name"    "$department"    "$salary"   "$country"  "${name:0:3}"-"$($date)>>current_employee.txt
echo "record saved"
else
echo "record not saved"
fi
echo " "
cat current_employee.txt


