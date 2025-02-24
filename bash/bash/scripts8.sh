#!/bin/bash
# Inicializar variables
suma=0
contador=0

# Leer números hasta que se introduzca un 0
while true; do
  read -p "Introduce un número (0 para terminar): " num
  if [ "$num" -eq 0 ]; then
    break
  fi
  suma=$((suma + num))
  contador=$((contador + 1))
done

# Calcular y mostrar los resultados
if [ "$contador" -gt 0 ]; then
  media=$(echo "scale=2; $suma / $contador" | bc)
  echo "La suma de los números es: $suma"
  echo "La media de los números es: $media"
else
  echo "No se introdujeron números."
fi