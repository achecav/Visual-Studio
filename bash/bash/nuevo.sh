#!/bin/bash

read -p "Introduce el número: " numero

while [ $numero -lt 100 ]; do
    numero=$((numero * 2))
    echo "El número es $numero"
done
 echo "fin del programa"