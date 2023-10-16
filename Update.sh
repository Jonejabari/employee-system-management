#!/bin/bash
echo "select option to update"
echo "1: update salary"
echo "2: update department"
echo "3: calculate comission"
echo "4: adjust salaries"

read option
case $option in
 
"1")
awk '{print NR,$0}' current_employee.txt
echo "enter salary to update"
read employee

echo "enter new salary:"
read newsalary

echo "enter number:"
read number

if sed -i "/$number/ s/$employee/$newsalary/" current_employee.txt
then 
echo "salary updated"
else
echo "have failed"
fi
echo""
cat current_employee.txt
;;

"2")
awk '{print NR, $0}' current_employee.txt

echo "enter department to update:"
read department

echo "enter new department for employee"
read newdepartment

echo "enter number:"
read number

if sed -i "/$number/ s/$department/$newdepartment/" current_employee.txt
then
echo "department updated"
else
echo "have failed to update"
fi
echo""
cat current_employee.txt
;;
esac



