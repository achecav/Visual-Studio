#!/bin/bash

# Pedir las longitudes de los lados del triángulo
read -p "Introduce el lado A: " A
read -p "Introduce el lado B: " B
read -p "Introduce el lado C: " C

# Comprobar el tipo de triángulo
if [[ A -eq B && B -eq C ]]; then
  echo "El triángulo es equilátero."
elif [[ A -eq B || B -eq C || A -eq C ]]; then
  echo "El triángulo es isósceles."
else
  echo "El triángulo es escaleno."
fi

# Extra: Comprobar si es un triángulo rectángulo
if (( A**2 + B**2 == C**2 || A**2 + C**2 == B**2 || B**2 + C**2 == A**2 )); then
  echo "Además, el triángulo cumple el teorema de Pitágoras (es rectángulo)."
fi
