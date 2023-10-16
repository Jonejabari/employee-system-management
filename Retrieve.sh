#!/bin/bash
echo -e "\t retrieving records\n\n"

echo "1.Retrieve name and salary of same range"
echo "2.Retrieve salary for employee from same country"
echo "3.Total number of employees"
echo "4.emlpoyee from same department"

echo "Which retrival would you like to perform?"

read retrival

case $retrival in
"1") echo "enter salary to view its employee"
     read salary
     awk "/$salary/{print}" current_employee.txt;;

"2") echo "enter to view country"
     read country
     awk "/$country/{print}" current_employee.txt;;

"3") echo "the total number of employees is:"
     wc -l current_employee.txt;;

"4") echo "please enter to view department"
     read department
     awk "/$department/{print}" current_employee.txt;;

esac
