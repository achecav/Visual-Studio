#!/bin/bash

# Pedir un número
read -p "Introduce un número entero no negativo: " num

# Comprobar que sea un número válido
if [ "$num" -lt 0 ] 2>/dev/null; then
  echo "Error: Debes introducir un número no negativo."
  exit 1
fi

# Calcular el factorial
factorial=1
for (( i=1; i<=num; i++ )); do
  factorial=$((factorial * i))
done

# Mostrar el resultado
echo "El factorial de $num es $factorial."
