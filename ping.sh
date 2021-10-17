#!/bin/bash
# Redefine myvar to myarray using parenthesis
myarray=($HOSTS)

echo "My array: ${myarray[@]}"
echo "Number of elements in the array: ${#myarray[@]}"

for i in "${myarray[@]}"
do
  echo "$i"
  ping $i -c 2
done
