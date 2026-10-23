#!/bin/bash
while true; do
echo "--- Menu ---"
echo "1. Greet User"
echo "2. Add Two Integers"
echo "3. Check Even or Odd"
echo "4. Exit"
read -p "Enter choice [1-4]: " choice
case $choice in
1)
read -p "Name: " uname
echo "Welcome, $uname!"
;;
2)
read -p "First integer: " n1
read -p "Second integer: " n2
echo "Sum: $((n1 + n2))"
;;
3)
read -p "Enter number: " num
if [ $((num % 2)) -eq 0 ]; then
echo "$num is Even"
else
echo "$num is Odd"
fi
;;
4)
echo "Exiting..."
exit 0
;;
*)
echo "Invalid choice. Try again."
;;
esac
done
