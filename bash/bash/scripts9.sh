#!/bin/bash

read -p "Introduce un número mayor a 1: " num

if [ "$num" -le 1 ]; then
  echo "Error: Debes introducir un número mayor a 1."
  exit 1
fi

a=0
b=1
echo -n "Serie de Fibonacci: $a $b"

for (( i=2; i<num; i++ )); do
  c=$((a + b))
  echo -n " $c"
  a=$b
  b=$c
done

echo
