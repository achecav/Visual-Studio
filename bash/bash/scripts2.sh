#!/bin/bash

# Pedir cuatro números
echo "Introduce 4 números, uno por línea:"
read -r num1
read -r num2
read -r num3
read -r num4

# Inicializar variables de máximo y mínimo
mayor=$num1
menor=$num1

# Comparar para encontrar el mayor
if [ "$num2" -gt "$mayor" ]; then
  mayor=$num2
fi
if [ "$num3" -gt "$mayor" ]; then
  mayor=$num3
fi
if [ "$num4" -gt "$mayor" ]; then
  mayor=$num4
fi

# Comparar para encontrar el menor
if [ "$num2" -lt "$menor" ]; then
  menor=$num2
fi
if [ "$num3" -lt "$menor" ]; then
  menor=$num3
fi
if [ "$num4" -lt "$menor" ]; then
  menor=$num4
fi

# Mostrar el resultado
echo "El número mayor es: $mayor"
echo "El número menor es: $menor"
