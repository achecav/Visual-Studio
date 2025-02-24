#!/bin/bash

# Pedir un número del dado
read -p "Introduce un número entre 1 y 6: " num

# Comprobar si el número está en el rango válido
if [[ "$num" -lt 1 || "$num" -gt 6 ]]; then
  echo "ERROR, número incorrecto"
  exit 1
fi

# Determinar el número opuesto
case $num in
  1) opuesto=6 ;;
  2) opuesto=5 ;;
  3) opuesto=4 ;;
  4) opuesto=3 ;;
  5) opuesto=2 ;;
  6) opuesto=1 ;;
esac

# Mostrar el resultado
echo "El número opuesto al $num es $opuesto."
