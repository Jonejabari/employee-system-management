#!/bin/bash
echo "please enter name you want to delete"
read name
echo "press 1 to delete?"
read comfirm
if [ $comfirm -eq 1 ]
then
echo "All records of" .$name."are deleted!!";
if [ $name ]
then
grep $name current_employee.txt >> former_employee.txt
echo "saved in former_employee.txt";
sed -i "/$name/d" current_employee.txt
fi
else
echo "inputs correctly entered:";
fi
cat current_employee.txt
