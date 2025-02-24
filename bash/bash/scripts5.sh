#!/bin/bash

read -p "Introduce un año: " any

if (( any % 4 == 0 && ( any % 100 != 0 || any % 400 == 0) )); then
  echo "El año $any es bisiesto."
else
  echo "El año $any no es bisiesto."
fi
